%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira
% 20.2.8002
% N - Valor
% x - Pontos
% y - Funcao
% z - Valor a interpolar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x,r,det] = gauss(A0,b0)
A=A0;
b=b0;
if size(b,2) > 1; b = b';
end
n = length(b);
for k = 1:n-1
for i= k+1:n
if A(i,k)~= 0
lambda = A(i,k)/A(k,k);
A(i,k+1:n) = A(i,k+1:n) - lambda*A(k,k+1:n);
b(i)= b(i) - lambda*b(k);
end
end
end
if nargout == 2; det = prod(diag(A));
 end
for k = n:-1:1
b(k) = (b(k) - A(k,k+1:n)*b(k+1:n))/A(k,k);
end
x = b;
r=b0-A0*x;
