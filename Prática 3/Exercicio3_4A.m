matA = [3 1 4; 8 1 2; 2 5 6];
vetA = [0 0 0];
ordem = length(matA);

[A,a] = EliminacaoDeGauss(matA, vetA, ordem);

A
