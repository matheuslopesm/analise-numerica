%Resolver sistemas do tipo Ux=d;
%x e a solucao do sistema
% n:Ordem
% L:Triangular Superior
% d:Vetor Independente
function [x]=SubsRetroativas(n,U,d)
  x(n)=d(n)/U(n,n);
  for i=n-1:-1:1
    soma=0;
    for j=i+1:n
      soma=soma+U(i,j)*x(j);
    endfor
    x(i)=(d(i)-soma)/U(i,i);
  endfor
endfunction