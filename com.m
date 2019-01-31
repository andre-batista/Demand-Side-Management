clear all

ProblemData.A{1}.nj = 156; ProblemData.A{1}.t0 = 10; ProblemData.A{1}.tf = 22; ProblemData.A{1}.q = 2.5;
ProblemData.A{2}.nj = 117; ProblemData.A{2}.t0 = [14 0]; ProblemData.A{2}.tf = [23 2]; ProblemData.A{2}.q = 3.5;
ProblemData.A{3}.nj = 123; ProblemData.A{3}.t0 = [15 0]; ProblemData.A{3}.tf = [23 3]; ProblemData.A{3}.q = [3.0 2.5];
ProblemData.A{4}.nj = 077; ProblemData.A{4}.t0 = 11; ProblemData.A{4}.tf = 23; ProblemData.A{4}.q = 5.0;
ProblemData.A{5}.nj = 099; ProblemData.A{5}.t0 = 09; ProblemData.A{5}.tf = 21; ProblemData.A{5}.q = [2.0 2.0];
ProblemData.A{6}.nj = 093; ProblemData.A{6}.t0 = [12 0]; ProblemData.A{6}.tf = [23 0]; ProblemData.A{6}.q = [3.5 3.0];
ProblemData.A{7}.nj = 056; ProblemData.A{7}.t0 = [13 0]; ProblemData.A{7}.tf = [23 1]; ProblemData.A{7}.q = [4.0 3.5 3.0];
ProblemData.A{8}.nj = 087; ProblemData.A{8}.t0 = [16 0]; ProblemData.A{8}.tf = [23 4]; ProblemData.A{8}.q = [2.0 1.75 1.5];

ProblemData.Pr(1) = 8.65; ProblemData.Anc(1) = 404.0;
ProblemData.Pr(2) = 8.11; ProblemData.Anc(2) = 375.2;
ProblemData.Pr(3) = 8.25; ProblemData.Anc(3) = 375.2;
ProblemData.Pr(4) = 8.10; ProblemData.Anc(4) = 404.0;
ProblemData.Pr(5) = 8.14; ProblemData.Anc(5) = 432.9;
ProblemData.Pr(6) = 8.13; ProblemData.Anc(6) = 432.9;
ProblemData.Pr(7) = 8.34; ProblemData.Anc(7) = 432.9;
ProblemData.Pr(8) = 9.35; ProblemData.Anc(8) = 663.8;
ProblemData.Pr(9) = 12.00; ProblemData.Anc(9) = 661.5;
ProblemData.Pr(10) = 9.19; ProblemData.Anc(10) = 892.4;
ProblemData.Pr(11) = 12.27; ProblemData.Anc(11) = 1181.0;
ProblemData.Pr(12) = 20.69; ProblemData.Anc(12) = 1293.0;
ProblemData.Pr(13) = 26.82; ProblemData.Anc(13) = 1257.4;
ProblemData.Pr(14) = 27.35; ProblemData.Anc(14) = 1257.4;
ProblemData.Pr(15) = 13.81; ProblemData.Anc(15) = 1139.8;
ProblemData.Pr(16) = 17.31; ProblemData.Anc(16) = 1318.6;
ProblemData.Pr(17) = 16.42; ProblemData.Anc(17) = 1338.4;
ProblemData.Pr(18) = 9.83; ProblemData.Anc(18) = 1301.7;
ProblemData.Pr(19) = 8.63; ProblemData.Anc(19) = 1446.0;
ProblemData.Pr(20) = 8.87; ProblemData.Anc(20) = 1246.1;
ProblemData.Pr(21) = 8.35; ProblemData.Anc(21) = 1298.7;
ProblemData.Pr(22) = 16.44; ProblemData.Anc(22) = 1096.7;
ProblemData.Pr(23) = 16.19; ProblemData.Anc(23) = 923.5;
ProblemData.Pr(24) = 8.87; ProblemData.Anc(24) = 577.2;

ProblemData.Discretization = 60;
save Data2.mat ProblemData