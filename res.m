clear all

ProblemData.A{1}.nj = 189; ProblemData.A{1}.t0 = [17 0]; ProblemData.A{1}.tf = [23 5]; ProblemData.A{1}.d = 1; ProblemData.A{1}.q = 1.2;
ProblemData.A{2}.nj = 288; ProblemData.A{2}.t0 = [14 0]; ProblemData.A{2}.tf = [23 2]; ProblemData.A{2}.d = 1; ProblemData.A{2}.q = 0.7;
ProblemData.A{3}.nj = 268; ProblemData.A{3}.t0 = [16 0]; ProblemData.A{3}.tf = [23 4]; ProblemData.A{3}.d = 2; ProblemData.A{3}.q = [0.5 0.4];
ProblemData.A{4}.nj = 279; ProblemData.A{4}.t0 = 11; ProblemData.A{4}.tf = 23; ProblemData.A{4}.d = 1; ProblemData.A{4}.q = 1.3;
ProblemData.A{5}.nj = 340; ProblemData.A{5}.t0 = [18 0]; ProblemData.A{5}.tf = [23 6]; ProblemData.A{5}.d = 1; ProblemData.A{5}.q = 1.0;
ProblemData.A{6}.nj = 158; ProblemData.A{6}.t0 = 10; ProblemData.A{6}.tf = 22; ProblemData.A{6}.d = 1; ProblemData.A{6}.q = 0.4;
ProblemData.A{7}.nj = 288; ProblemData.A{7}.t0 = [12 0]; ProblemData.A{7}.tf = [23 0]; ProblemData.A{7}.d = 3; ProblemData.A{7}.q = [0.2 0.2 0.2];
ProblemData.A{8}.nj = 406; ProblemData.A{8}.t0 = [19 0]; ProblemData.A{8}.tf = [23 7]; ProblemData.A{8}.d = 1; ProblemData.A{8}.q = 2;
ProblemData.A{9}.nj = 048; ProblemData.A{9}.t0 = 08; ProblemData.A{9}.tf = 20; ProblemData.A{9}.d = 1; ProblemData.A{9}.q = 0.9;
ProblemData.A{10}.nj = 59; ProblemData.A{10}.t0 = [12 0]; ProblemData.A{10}.tf = [23 0]; ProblemData.A{10}.d = 1; ProblemData.A{10}.q = 0.85;
ProblemData.A{11}.nj = 58; ProblemData.A{11}.t0 = 9; ProblemData.A{11}.tf = 21; ProblemData.A{11}.d = 1; ProblemData.A{11}.q = 1.5;
ProblemData.A{12}.nj = 66; ProblemData.A{12}.t0 = 0; ProblemData.A{12}.tf = 12; ProblemData.A{12}.d = 1; ProblemData.A{12}.q = 0.3;
ProblemData.A{13}.nj = 101; ProblemData.A{13}.t0 = 0; ProblemData.A{13}.tf = 12; ProblemData.A{13}.d = 1; ProblemData.A{13}.q = 1.1;
ProblemData.A{14}.nj = 56; ProblemData.A{14}.t0 = 8; ProblemData.A{14}.tf = 20; ProblemData.A{14}.d = 1; ProblemData.A{14}.q = 0.8;

ProblemData.Pr(1) = 8.65; ProblemData.Anc(1) = 395.3;
ProblemData.Pr(2) = 8.11; ProblemData.Anc(2) = 331.9;
ProblemData.Pr(3) = 8.25; ProblemData.Anc(3) = 364.7;
ProblemData.Pr(4) = 8.10; ProblemData.Anc(4) = 348.8;
ProblemData.Pr(5) = 8.14; ProblemData.Anc(5) = 269.6;
ProblemData.Pr(6) = 8.13; ProblemData.Anc(6) = 269.6;
ProblemData.Pr(7) = 8.34; ProblemData.Anc(7) = 412.3;
ProblemData.Pr(8) = 9.35; ProblemData.Anc(8) = 539.1;
ProblemData.Pr(9) = 12.00; ProblemData.Anc(9) = 540.9;
ProblemData.Pr(10) = 9.19; ProblemData.Anc(10) = 593.8;
ProblemData.Pr(11) = 12.27; ProblemData.Anc(11) = 593.6;
ProblemData.Pr(12) = 20.69; ProblemData.Anc(12) = 594.1;
ProblemData.Pr(13) = 26.82; ProblemData.Anc(13) = 558.8;
ProblemData.Pr(14) = 27.35; ProblemData.Anc(14) = 545.6;
ProblemData.Pr(15) = 13.81; ProblemData.Anc(15) = 535.4;
ProblemData.Pr(16) = 17.31; ProblemData.Anc(16) = 529.6;
ProblemData.Pr(17) = 16.42; ProblemData.Anc(17) = 513.8;
ProblemData.Pr(18) = 9.83; ProblemData.Anc(18) = 866.4;
ProblemData.Pr(19) = 8.63; ProblemData.Anc(19) = 1085.6;
ProblemData.Pr(20) = 8.87; ProblemData.Anc(20) = 1196.6;
ProblemData.Pr(21) = 8.35; ProblemData.Anc(21) = 1228.3;
ProblemData.Pr(22) = 16.44; ProblemData.Anc(22) = 1117.3;
ProblemData.Pr(23) = 16.19; ProblemData.Anc(23) = 911.2;
ProblemData.Pr(24) = 8.87; ProblemData.Anc(24) = 545.4;

ProblemData.Discretization = 60; ProblemData.Function = 'fDSM';

save Data1.mat ProblemData