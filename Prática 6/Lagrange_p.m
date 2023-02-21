%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira
% 20.2.8002
% m - Valor
% x - Pontos/intervalo
% y - Valor Funcao
% z - Valor a interpolar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [r]=PolLagrang(m,x,y,z)
r=0;
for i=1:m
c=1;
d=1;
for j=1:m
if i~=j
c=c*(z-x(j));
d=d*(x(i)-x(j));
end
end
r=r+y(i)*c/d;
end
end

