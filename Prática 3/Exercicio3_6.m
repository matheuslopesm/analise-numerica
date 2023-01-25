clear
clc

% A
A = [5 -2 2; 3 2 4; 4 -3 1];
vetA = [2; -1; 3];

ansA_LU = Solucao_Sistema_LU(A, vetA)
ansA_LDL = Solucao_Decomposicao_LDL(A, vetA)
ansA_CHL = Cholesky(A)

% B
B = [1 1 1; 1 -2 -2; 2 1 1];
vetB = [2; -1; 3];

ansB_LU = Solucao_Sistema_LU(B, vetB)
ansB_LDL = Solucao_Decomposicao_LDL(B, vetB)
ansB_CHL = Cholesky(B)


% C
C = [1 1 6; 1 1.5 2; 6 2 0.5];
vetC = [11 ; 4.5 ; 14];

ansC_LU = Solucao_Sistema_LU(C, vetC)
ansC_LDL = Solucao_Decomposicao_LDL(C, vetC)
ansC_CHL = Cholesky(C)

% D
D = [1 1 6; 1 1.5 2; 6 2 0.5];
vetD = [11 ; 4.5 ; 14];

ansD_LU = Solucao_Sistema_LU(D, vetD)
ansD_LDL = Solucao_Decomposicao_LDL(D, vetD)
ansD_CHL = Cholesky(D)

% E
E = [4 5 7; 2 4 3; 6 3 8];
vetE = [5; 3; 8];

ansE_LU = Solucao_Sistema_LU(E, vetE)
ansE_LDL = Solucao_Decomposicao_LDL(E, vetE)
ansE_CHL = Cholesky(E)

% F
F = [3 7 8 1; 4 5 2 8; 6 3 2 5; 2 4 1 3];
vetF = [3; 8; 5; 9];

ansF_LU = Solucao_Sistema_LU(F, vetF)
ansF_LDL = Solucao_Decomposicao_LDL(F, vetF)
ansF_CHL = Cholesky(F)

% G
G = [1 2 -3; 3 -1 5; 4 1 2];
vetG = [4; 2; 2];

ansG_LU = Solucao_Sistema_LU(G, vetG)
ansG_LDL = Solucao_Decomposicao_LDL(G, vetG)
ansG_CHL = Cholesky(G)

% H
H = [1 1 1; 2 3 2; 2 3 2];
vetH = [2; 5; (sqrt(3) + 1)];

ansH_LU = Solucao_Sistema_LU(H, vetH)
ansH_LDL = Solucao_Decomposicao_LDL(H, vetH)
ansH_CHL = Cholesky(H)

% I
I = [1 1 1; 2 3 2; 2 3 2];
vetI = [2; 5; (sqrt(3) + 1)];

ansI_LU = Solucao_Sistema_LU(I, vetI)
ansI_LDL = Solucao_Decomposicao_LDL(I, vetI)
ansI_CHL = Cholesky(I)

% J
J = [12 -5 4 -1 8 7; -5 25 7 -4 9 -32; 4 7 -6 3 -3 4; -1 -4 3 17 5 2; 8 9 -3 5 1 15; -7 -32 4 2 15 23];
vetJ = [0; -3; 14; 6; 4; 3];

ansJ_LU = Solucao_Sistema_LU(J, vetJ)
ansJ_LDL = Solucao_Decomposicao_LDL(J, vetJ)
ansJ_CHL = Cholesky(J)

% K
K = [-3 -24 5 17; -24 5 -2 4; 5 -2 3 -8; -17 4 -8 1];
vetK = [-152; 31; 64; 11];

ansK_LU = Solucao_Sistema_LU(K, vetK)
ansK_LDL = Solucao_Decomposicao_LDL(K, vetK)
ansK_CHL = Cholesky(K)

% L
L = [20 -7 -9 -2 2; -7 14 6 2 -5; -9 6 25 4 -3; -2 2 4 6 -4; 2 -5 -3 -4 13];
vetL = [92; 63; -235; 94; -61];

ansL_LU = Solucao_Sistema_LU(L, vetL)
ansL_LDL = Solucao_Decomposicao_LDL(L, vetL)
ansL_CHL = Cholesky(L)
