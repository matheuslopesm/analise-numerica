%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira
% 20.2.8002
% N - Valor
% x - Pontos
% y - Funcao
% z - Valor a interpolar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [P]=AlgInterpolacao(n,x,y,w)

for i=1:n
    A(i,1)=1;
    for j=2:n
        A(i,j)=x(i)^(j-1);
    end
end

a=Gauss(n,A,y);
P=0;

for i=1:n
    P=P+a(i)*w^(i-1);
end

end
