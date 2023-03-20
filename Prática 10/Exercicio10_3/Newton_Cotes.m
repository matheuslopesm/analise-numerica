function [I,Erro] = Newton_Cotes(a,b,n,m,f)
    if n<1 || n>8
        Erro = 1;
        disp('Grau do Polinomio <1 ou Grau do Polinomio >8');
        return;
    end
    if mod(m,n)~=0
        Erro = 2;
        disp('Número de Subintervalos não é um múltiplo do Grau do Polinomio');
        return;
    end
    Erro = 0;
    d(1) = 2;
    d(2) = 6;
    d(3) = 8;
    d(4) = 90;
    d(5) = 288;
    d(6) = 840;
    d(7) = 17280;
    d(8) = 28350;
    c(1) = 1;
    c(2) = 1;
    c(3) = 4;
    c(4) = 1;
    c(5) = 3;
    c(6) = 7;
    c(7) = 32;
    c(8) = 12;
    c(9) = 19;
    c(10) = 75;
    c(11) = 50;
    c(12) = 41;
    c(13) = 216;
    c(14) = 27;
    c(15) = 272;
    c(16) = 751;
    c(17) = 3577;
    c(18) = 1323;
    c(19) = 2989;
    c(20) = 989;
    c(21) = 5888;
    c(22) = -928;
    c(23) = 10496;
    c(24) = -4540;
    p = (n*(n+2)+mod(n,2))/4;
    x = a;
    y = f(a);
    ck = c(p);
    s = y*ck;
    h = (b-a)/m;
    fprintf('0, %f , %f, %f"',x,y,ck);
    for i=2:m+1
        x = x+h;
        y = f(x);
        k = fix((mod(i-2,n)+1)/n) - fix((i-1)/m)+1;
        ck = c(p+fix(n/2)-abs(fix(mod(i-2,n)+1-n/2)))*k;
        s = s+y*ck;
        fprintf('\n%d, %f , %f, %f',i-1,x,y,ck);
    end
    I= n*h/d(n)*s;
end