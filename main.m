% LOAD THE .MAT FILE FIRSTLY
%==========================================================================
deltaT = ProblemData.Discretization/60;
that = 0:deltaT:(24-deltaT);
T = length(that);
t = 1:T;
N = length(ProblemData.A);
lengthCosts = 40;
%==========================================================================
sumQ = 0;
for i = 1:N
    sumQ = sumQ + ProblemData.A{i}.nj*sum(ProblemData.A{i}.q);
end
%==========================================================================
% O = (1./ProblemData.Pr)./sum(1./ProblemData.Pr)*(sumQ + sum(ProblemData.Anc));
% O = ProblemData.Anc + (1./ProblemData.Pr)./sum(1./ProblemData.Pr)*sumQ;
O = (mean(ProblemData.Pr)/max(ProblemData.Pr))*(1./ProblemData.Pr)*sum(ProblemData.Anc);
O = O';
clear('sumQ');
%==========================================================================
q = cell(N,1);
for j = 1:N
    q{j} = sparse(T,T);
    for i = 1:T
        for k = 1:length(ProblemData.A{j}.q)
            p = i + k - 1;
            if p > T
                p = p - T;
            end
            q{j}(i,p) = ProblemData.A{j}.q(k);
        end
    end
end
clear('p');
%==========================================================================
minCost = 0;
for j = 1:N
    aux = q{j};
    Tj = 1:T;
    for k = 1:length(ProblemData.A{j}.t0)
        t0 = find(that == ProblemData.A{j}.t0(k),1);
        tf = find(that == ProblemData.A{j}.tf(k),1);
        Tj(t0:tf) = 0;
    end
    Tj(Tj == 0) = [];
    aux(Tj,:) = zeros(length(Tj),T);
    aux = aux*(ProblemData.Pr');
    minCost = minCost + ProblemData.A{j}.nj*min(aux(aux > 0));
end
clear('t0','tf','Tj');
%==========================================================================
nVarX = N*T;
a = zeros(N+1,nVarX);
b = zeros(N+1,1);
for j = 1:N
    i = (j-1)*T + 1;
    a(j,i:(i+T-1)) = 1;
    b(j) = ProblemData.A{j}.nj;
    %----------------------------------------------------------------------
    aux = ones(1,T);
    for i = 1:length(ProblemData.A{j}.t0)
        k1 = find(ProblemData.A{j}.t0(i) == that,1);
        k2 = find(ProblemData.A{j}.tf(i) == that,1);
        aux(k1:k2) = 0;
    end
    i = (j-1)*T + 1;
    a(N+1,i:(i+T-1)) = aux;
end
clear('k1','k2','deltaT');
%==========================================================================
nVarY = T;
a = [a;zeros(T,nVarX)];
for i = t;
    for j = 1:N
        a(N+1+i,((j-1)*T+1):(j*T)) = q{j}(:,i)';
    end
end
[r,~] = size(a);
aY = zeros(r,T);
aY((N+2):r,:) = -eye(r-N-1,T);
a = [a aY];
clear('aY','r','t');
%==========================================================================
a = [a; zeros(1,nVarX+nVarY)];
for j = 1:N
    c = q{j}*(ProblemData.Pr');
    a(end,((j-1)*T+1):(j*T)) = c';
end
A = sparse(a);
clear('a','c');
%==========================================================================
bY = O - ProblemData.Anc';
b = [b; bY];
%b = [b; MaxPrice];
clear('bY');
%==========================================================================
lbX = zeros(nVarX,1);
ubX = zeros(nVarX,1);
for j = 1:N
    ubX(((j-1)*T+1):(j*T),1) = ProblemData.A{j}.nj;
end
lbY = -inf*ones(nVarY,1);
ubY = inf*ones(nVarY,1);
%==========================================================================
vtypeX = repmat('I',nVarX,1);
vtypeY = repmat('C',nVarY,1);
sense = [repmat('=',length(b),1); '<'];
%==========================================================================
Q = zeros(nVarX+nVarY,nVarX+nVarY);
Q((nVarX+1):end,(nVarX+1):end) = eye(nVarY,nVarY);
%==========================================================================
model.A = A;
model.obj = zeros(nVarX+nVarY,1);
model.sense = sense;
%model.rhs = b;
model.lb = [lbX;lbY];
model.ub = [ubX;ubY];
model.vtype = [vtypeX; vtypeY];
model.modelsense = 'min';
model.Q = sparse(Q);
param.TimeLimit = 30;
param.OutputFlag = 0;
%==========================================================================
clear('A','sense','lbX','lbY','ubX','ubY','vtypeX','vtypeY','Q');
%==========================================================================
model.rhs = [b; inf];
tic;
monoR = gurobi(model,param);
disp(num2str(toc));
%==========================================================================
Q = zeros(T,1);
for j = 1:N
    for i = 1:T
        aux = monoR.x((j-1)*T+i,1)*q{j}(i,:)';
        Q(:,1) = Q(:,1) + aux;
    end
end
Q(:,1) = Q(:,1) + ProblemData.Anc';
peakLoad = max(Q);
clear('aux','q');
%==========================================================================
figure
stairs([that,24],[Q',Q(end)],'r','linewidth',2);
hold('on');
stairs([that,24],[O',O(end)],'b','linewidth',2);
stairs([that,24],[ProblemData.Anc,ProblemData.Anc(end)],'k','linewidth',2);
% stairs(that,1e2*ProblemData.Pr,'g','linewidth',2);
grid('on');
xlim([0,24])
%title('Demand Side Management (Mono-Objective Problem)');
xlabel('Time [Hours]');
ylabel('Load [kW]');
legend('Q(t)','Obj(t)','Q^{nc}');
% legend('Q(t)','Obj(t)','Q^{nc}','Price');
hold('off');
clear('O','Q','that');
%==========================================================================
maxCost = model.A(end,1:N*T)*monoR.x(1:N*T);
x = linspace(-1,0,lengthCosts);
maxPrice = -(minCost - maxCost)*x.^2 + minCost;
maxPrice = maxPrice(end:-1:1);
multiR = cell(lengthCosts,1);
for i = 1:lengthCosts
    model.rhs = [b; maxPrice(i)];
    multiR{i} = gurobi(model,param);
end
clear('b','minCost');
%==========================================================================
objval = zeros(lengthCosts,1);
for i = 1:lengthCosts
    objval(i) = multiR{i}.objval;
end
clear('i','j','k','lengthCosts','N','T','nVarX','nVarY');
%==========================================================================
figure
% maxPrice = maxPrice./100;
maxPrice = (maxPrice+ProblemData.Anc*ProblemData.Pr')./100;
plot(maxPrice,sqrt(objval),'r-o','linewidth',2);
xlabel('Price [U$]');
ylabel('Power Gap [kW]');
%title('Pareto-Optimal Solution');
grid('on');
%==========================================================================