function [s2, CondErro] = Splines_Extrapolados(n,x,y)
if n<3
    CondErro = 1;
    break;
end
CondErro = 0;
m=n-2;
Ha = x(2)-x(1);
Deltaa = (y(2)-y(1))/Ha;
Hb = x(3)-x(2);
Deltab= (y(3)-y(2))/Hb;
d(1) = (Ha+Hb)*(Ha+2*Hb)/Hb;
c(2) = (Hb^2-Ha^2)/Hb;
s2(2) = 6*(Deltab-Deltaa);
for i=2:m-1
    Ha = Hb;
    Deltaa = Deltab;
    Hb = x(i+2)-x(i+1);
    Deltab = (y(i+2)-y(i+1))/Hb;
    d(i) = 2*(Ha+Hb);
    e(i-1) = Ha;
    c(i+1) = 6*(Deltab-Deltaa);
    Ha = Hb;
    Deltaa = Deltab;
end
Ha = Hb;
Deltaa = Deltab;
Hb = x(n)-x(n-1);
Deltab = (y(n)-y(n-1))/Hb;
d(m) = (Ha+Hb)*(Hb+2*Ha)/Ha;
e(m-1) = (Ha^2-Hb^2)/Ha;
s2(m+1) = 6*(Deltab-Deltaa);
for i=2:m
    t=e(i-1)/d(i-1);
    d(i) = d(i)-t*c(i);
    s2(i+1) = s2(i+1)-t*s2(i);
end
Ha = x(2)-x(1);
Hb = x(3)-x(2);
s2(1) = ((Ha+Hb)*s2(2)-Ha*s2(3))/Hb;
Ha=x(n-1)-x(n-2);
Hb = x(n)-x(n-1);
s2(m+2) = ((Ha+Hb)*s2(m+1)-Hb*s2(m))/Ha;
end