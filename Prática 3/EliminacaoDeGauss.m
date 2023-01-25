function [A, b] = EliminacaoDeGauss (A, b, n)
  for j = 1 : n
    for i = (j+1) : n
      m(i, j) = A(i, j) / A(j, j);
      for k = 1 : n
        A(i, k) = -m(i, j) * A(j, k) + A(i, k);
      endfor
      b(i) = -m(i, j) * b(j) + b(i);
    endfor
  endfor
endfunction
