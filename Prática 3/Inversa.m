function inv = Inversa (A)
  if size(A,1)~=size(A,2)
    disp('matriz não quadrada');
    inv = NaN;
    return;
  endif
  n = size(A,1);
  Ident = eye(n);
  for i=1:n
    b = Ident(:,i);
    inv(i,:) = Solucao_Sistema_LU(A, b);
  endfor
endfunction
