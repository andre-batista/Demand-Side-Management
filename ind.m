clear all

ProblemData.A{1}.nj = 39; ProblemData.A{1}.t0 = [16 0]; ProblemData.A{1}.tf = [23 4]; ProblemData.A{1}.q = [12.5 12.5 12.5 12.5];
ProblemData.A{2}.nj = 35; ProblemData.A{2}.t0 = 08; ProblemData.A{2}.tf = 20; ProblemData.A{2}.q = [25 25 25 25 25];
ProblemData.A{3}.nj = 16; ProblemData.A{3}.t0 = 10; ProblemData.A{3}.tf = 22; ProblemData.A{3}.q = [30 30 30 30 30];
ProblemData.A{4}.nj = 08; ProblemData.A{4}.t0 = [12 0]; ProblemData.A{4}.tf = [23 0]; ProblemData.A{4}.q = [50 50 50 50 50 50];
ProblemData.A{5}.nj = 05; ProblemData.A{5}.t0 = [15 0]; ProblemData.A{5}.tf = [23 3]; ProblemData.A{5}.q = [100 100 100 100 100 100];
ProblemData.A{6}.nj = 06; ProblemData.A{6}.t0 = [13 0]; ProblemData.A{6}.tf = [23 1]; ProblemData.A{6}.q = [150 150 150];

ProblemData.Pr(1) = 8.65; ProblemData.Anc(1) = 974;
ProblemData.Pr(2) = 8.11; ProblemData.Anc(2) = 876.6;
ProblemData.Pr(3) = 8.25; ProblemData.Anc(3) = 827.9;
ProblemData.Pr(4) = 8.10; ProblemData.Anc(4) = 730.5;
ProblemData.Pr(5) = 8.14; ProblemData.Anc(5) = 730.5;
ProblemData.Pr(6) = 8.13; ProblemData.Anc(6) = 779.2;
ProblemData.Pr(7) = 8.34; ProblemData.Anc(7) = 1120.1;
ProblemData.Pr(8) = 9.35; ProblemData.Anc(8) = 1509.7;
ProblemData.Pr(9) = 12.00; ProblemData.Anc(9) = 1170.5;
ProblemData.Pr(10) = 9.19; ProblemData.Anc(10) = 1560.1;
ProblemData.Pr(11) = 12.27; ProblemData.Anc(11) = 1274.9;
ProblemData.Pr(12) = 20.69; ProblemData.Anc(12) = 1372.3;
ProblemData.Pr(13) = 26.82; ProblemData.Anc(13) = 680.1;
ProblemData.Pr(14) = 27.35; ProblemData.Anc(14) = 898.6;
ProblemData.Pr(15) = 13.81; ProblemData.Anc(15) = 898.6;
ProblemData.Pr(16) = 17.31; ProblemData.Anc(16) = 842.4;
ProblemData.Pr(17) = 16.42; ProblemData.Anc(17) = 1145.0;
ProblemData.Pr(18) = 9.83; ProblemData.Anc(18) = 706.7;
ProblemData.Pr(19) = 8.63; ProblemData.Anc(19) = 917.0;
ProblemData.Pr(20) = 8.87; ProblemData.Anc(20) = 809.7;
ProblemData.Pr(21) = 8.35; ProblemData.Anc(21) = 863.6;
ProblemData.Pr(22) = 16.44; ProblemData.Anc(22) = 964.9;
ProblemData.Pr(23) = 16.19; ProblemData.Anc(23) = 970.1;
ProblemData.Pr(24) = 8.87; ProblemData.Anc(24) = 1022.7;

ProblemData.Discretization = 60;

save Data3.mat ProblemData