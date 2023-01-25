E = [0.3 0.07 0.1; 0.014 0.05 0.0023; 0.09 0.05 0.18];
vE = [0.15; -1.4; -0.31];

[J, IterJ, InfoJ] = Jacobi(size(E, 1), E, vE, 0.0001, 100)
[GS, IterGS, InfoGS] = Gauss_Seidel(size(E, 1), E, vE, 0.0001, 100)
