matA = [-10 2 4 6; 5 -8 4 1; 3 9 12 5; -4 0 5 2];
vetA = [0 0 0 0];
ordem = length(matA);

[A,a] = EliminacaoDeGauss(matA, vetA, ordem);

A
