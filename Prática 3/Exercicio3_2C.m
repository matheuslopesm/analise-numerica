A = [4 1 -4 1; 0 -2 8 -3; 0 0 9 -4; 0 0 0 -10];
B = [0.5; 7; 3; 30];
ordem = length(A)

x = Substituicoes_retroativas(ordem, A, B)
