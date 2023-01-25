function x = Solucao_Sistema_LU (A, b)
  m = size(A,1);
  n = size(A,2);
  [A, Pivot, PdU, Info] = Decomposicao_LU_Pivot_Parcial(m, n, A);
  U = triu(A);
  L=eye(size(A)) + tril(A, -1);
  p = eye(size(A));
  p = p(Pivot,:);
  b = p*b;
  y = Substituicoes_sucessivas(n,L,b);
  x = Substituicoes_retroativas(n, U, y);
endfunction
