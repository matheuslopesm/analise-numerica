%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira
% 20.2.8002
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Polinomio_Lagrange(m,x,y,z)
  r=0;
  for
    i=1:+1:m
    c=1;
    d=1;
    for j=1:+1:m
      if i~=j
        c=c*(z-x(j));
        d=d*(x(i)-x(j));
      endif
    endfor
    r=r+y(i)*(c/d)
  endfor
endfunction
