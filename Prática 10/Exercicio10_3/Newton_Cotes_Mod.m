function [Integral,CondErro]=NewCotesMod(a,b,n,m,f)
%a - Limite Inferior%
a=0;
%b - Limite Superior%
b=3.14159;
%n - Grau do Polinomio%
n=2;
%m - Número de Subintervalos%
m=6;
%f - Função a ser integrada%
f=@(x)sin(x);

d=[2 6 8 90 288 840 17280 28350];
c=[1 1 4 1 3 7 32 12 19 75 50 41 216 27 272 751 3577 1313 2989 989 5888 -928 10496 -4540];
CondErro=0;
Integral=0;
if (n<1 || n>8)
    CondErro=CondErro+1;
end
if rem(m,n)~=0
    CondErro=CondErro+2;
end
if CondErro~=0
    return;
end
%Calculo da Integral%
p=fix(0.25*(n*(n+2)+rem(n,2)));
h=(b-a)/m;
for i=0:m
    x=a+i*h;
    %Avaliar a função integrando em x%   
    yaux=f(x);
    j=p+fix(0.5*n-abs(rem(i,n)-0.5*n));
    k=1+fix((n-rem(i,n))/n)-fix((m-rem(i,m))/m);
    Integral=Integral+yaux*c(j)*k;
end
Integral=n*h/d(n)*Integral;
end