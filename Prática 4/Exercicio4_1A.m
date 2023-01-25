A = [7 1 5; 1 10 2; 5 20 11];
vA = [7; 3; 5];

[J, IterJ, InfoJ] = Jacobi(size(A, 1), A, vA, 0.0001, 100)
[GS, IterGS, InfoGS] = Gauss_Seidel(size(A, 1), A, vA, 0.0001, 100)
