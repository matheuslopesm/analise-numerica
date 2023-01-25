B = [4 1 5 3; 4 5 2 1; 7 6 10 5; 3 9 1 5];
vB = [5; 7; 6; 3];

[J, IterJ, InfoJ] = Jacobi(size(B, 1), B, vB, 0.0001, 100)
[GS, IterGS, InfoGS] = Gauss_Seidel(size(B, 1), B, vB, 0.0001, 100)
