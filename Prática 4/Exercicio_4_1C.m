C = [5 3 1; 1.5 10 1; 0.7 2.3 2];
vC = [10; 2; 5];

[J, IterJ, InfoJ] = Jacobi(size(C, 1), C, vC, 0.0001, 100)
[GS, IterGS, InfoGS] = Gauss_Seidel(size(C, 1), C, vC, 0.0001, 100)
