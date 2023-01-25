D = [21 12 5; 4 45 13; 9 14 32];
vD= [17; 11; 21];

[J, IterJ, InfoJ] = Jacobi(size(D, 1), D, vD, 0.0001, 100)
[GS, IterGS, InfoGS] = Gauss_Seidel(size(D, 1), D, vD, 0.0001, 100)
