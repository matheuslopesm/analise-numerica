%Resolver sistemas do tipo Lx=c;
%x e a solucao do sistema
% n:Ordem
% L:Triangular inferior
% c:Vetor Independente
function [x]=SubsSucessivas(n,L,c)
  x(1)=c(1)/L(1,1);
  for i=2:n;
    soma=0;
    for j=1:i-1
      soma=soma+L(i,j)*x(j);
    endfor
    x(i)=(c(i)-soma)/L(i,i);
  endfor
endfunction