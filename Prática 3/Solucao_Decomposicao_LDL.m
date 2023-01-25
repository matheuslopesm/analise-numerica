function [x, Det] = Solucao_Decomposicao_LDL (A, b)
  n = size(A,1);
  D = eye(n);
  [A, Det] = Decomposicao_LDL(n, A);
  for i=1:n
    D(i,i) = A(i,i);
    A(i,i) = 1;
  endfor
  y = Substituicoes_sucessivas(n, A, b);
  for i=1:n
    t(i) = y(i)/D(i,i);
  endfor
  x = Substituicoes_retroativas(n, A', t);
endfunction
