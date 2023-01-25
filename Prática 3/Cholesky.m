function [A, Det, Info] = Cholesky (A)
  n = size(A,1);
  Det = 1;
  Info = 0;
  for j=1:n
    soma = 0;
    for k=1:j-1
      soma = soma+A(j,k)*A(j,k);
    endfor
    t = A(j,j)-soma;
    if t>0
      A(j,j) = sqrt(t);
      r = 1/A(j,j);
      Det = Det*t;
    else
      Info = j;
      disp('Matriz não positiva');
      break;
    endif
    for i=j+1:n
      soma = 0;
      for k=1: j-1
        soma = soma+A(i,k)*A(i,k);
      endfor
      A(i,j) = (A(i,j)-soma)*r;
    endfor
  endfor
endfunction
