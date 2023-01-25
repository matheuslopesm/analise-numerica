function [A, Det] = Decomposicao_LDL (n, A)
  Det = 1;
  for j=1:n
    soma = 0;
    for k=1:j-1
      soma = soma+(A(j,k))^2*A(k,k);
    endfor
    A(j,j) = A(j,j)-soma;
    r = 1/A(j,j);
    Det = Det*A(j,j);
    for i=j+1:n
      soma = 0;
      for k=1:j-1
        soma = soma+A(i,k)*A(k,k)*A(j,k);
      endfor
      A(i,j) = (A(i,j)-soma)*r;
    endfor
  endfor
endfunction
