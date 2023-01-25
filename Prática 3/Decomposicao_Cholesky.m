A = [9 6 -3 3; 6 20 2 22; -3 2 6 2; 3 22 2 28]

[A, Det, Info] = Cholesky(A)
LA = [3 6 -3 3; 2 4 2 22; -1 1 2 2; 1 5 -1 1]
Det
Info
L = tril(LA);
b = [12; 64; 4; 82];
y = Substituicoes_sucessivas(L,b);
x = Substituicoes_retroativas(L', y)
