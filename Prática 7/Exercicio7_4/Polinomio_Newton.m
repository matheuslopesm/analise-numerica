function Polinomio_Newton(m,x,y,z)
  for i=1:m
    Dely(i)=y(i);
  endfor
  %Construção das diferenças divididas
  for k=1:m-1
    for i=m:-1:k+1
      Dely(i)=(Dely(i)-Dely(i-1))/(x(i)-x(i-k));
    endfor
  endfor
  %Avaliação do polinômio pelo processo de Horner
  r=Dely(m)
  for i=m-1:-1:1
    r=r*(z-x(i))+Dely(i)
  endfor
endfunction
