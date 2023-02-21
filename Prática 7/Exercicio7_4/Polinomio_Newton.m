function Polinomio_Newton(m,x,y,z)
  for i=1:m
    Dely(i)=y(i);
  endfor
  %Constru��o das diferen�as divididas
  for k=1:m-1
    for i=m:-1:k+1
      Dely(i)=(Dely(i)-Dely(i-1))/(x(i)-x(i-k));
    endfor
  endfor
  %Avalia��o do polin�mio pelo processo de Horner
  r=Dely(m)
  for i=m-1:-1:1
    r=r*(z-x(i))+Dely(i)
  endfor
endfunction
