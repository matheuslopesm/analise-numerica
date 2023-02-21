function [A,det,erro] = Cholesky(n,A)
  erro=0;
  det=1;
  for j=1:n
    soma=0;
    for k=1:j-1
      soma=soma+(A(j,k))^2;
    endfor
    t=A(j,j)-soma;
    if(t>0)
      A(j,j)=sqrt(t);
      r=1/A(j,j);
      det=det*t;
    else
      erro=1;
      fprintf('A matriz não é definida positiva');
      break;
    endif
    for i=j+1:n
      soma=0;
      for k=1:j-1
        soma=soma+A(i,k)*A(j,k);
      endfor
      A(i,j)=(A(i,j)-soma)*r;
    endfor
  endfor
endfunction