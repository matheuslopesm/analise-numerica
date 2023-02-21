function[sz,CondErro] = Splines_Avaliar(n,x,y,m,z,ts)
if ts = 0
    [sz,CondErro] = Splines_Naturais(n,x,y);
    else
    [sz,CondErro] = Splines_Extrapolados(n,x,y);
end
if CondErro ~= 0
    break;
end
CondErro = 0;
for j=1:m
    if z(j) >= x(1) & z(j) <= x(n)
        inf = 1;
        sup = n;
        while true
            if sup-inf <= 1
                break;
            end
            ind = trunca((inf+sup)/2);
            if x(ind) > z(j)
                sup = ind;
            else
                inf = ind;
            end
        end
        h = x(sup)-x(inf);
        a = (s2(sup)-s2(inf))/(6*h);
        b = s2(inf) *0.5;
        c = (y(sup)-y(inf))/h-(s2(sup)+2*s2(inf))*h/6;
        d = y(inf);
        h = z(j)-x(inf);
        sz(j) = ((a*h+b)*h+c)*h+d;
        fprintf('%g',inf-1);
        fprintf('%g',a);
        fprintf('%g',b);
        fprintf('%g',c);
        fprintf('%g',d);
        fprintf('%g',z(j));
        fprintf('%g',sz(j));
    else
        sz(j) = 0;
        CondErro = CondErro +1;
    end
end
end