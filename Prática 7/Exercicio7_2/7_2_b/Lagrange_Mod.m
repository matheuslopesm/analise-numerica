function Lagrange_Mod(m,x,y,z)
  r=0;
  for i=1:m
    c=1;
    d=1;
    for j=1:m
      if i~=j
        c=c*(z-x(j));
        d=d*(x(i)-x(j));
        h(i)=d;
      endif
    endfor
    r=r+y(i)*c/d;
  endfor
  syms x
  for i=1:m
    aux(i)=h(i)*x^(i-1);
  endfor
  f(x)=sum(aux)
  p=sym2poly(f(x))
endfunction