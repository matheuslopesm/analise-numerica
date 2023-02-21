%Regress�o linear dvs
%{Objetivo: calcular par�metros de quadrados m�nimos de modelo linear m�ltiplo via decomposi��o em valores singulares}
%Par�metros de entrada: n,v,p,x,y {n�mero de pontos, n�mero de vari�veis, n�mero de par�metros, vari�veis explicativas, vari�veis respostas}
%Par�metros de sa�da: b,r2,sigma2,conderro {coef. de regress�o, coef. de determina��o, vari�ncia residual, condi��o de erro}
function RegLinDVS(n,v,p,x,y)
  if v>1 &&(v+1)~=p
    conderro=1;
    return;
  endif
  conderro=0;
  vp1=v+1;
  pm1=p-1;
  for i=1:n
    for j=vp1:-1:2
      x(i,j)=x(i,j-1);
    endfor
    x(i,1)=1;
  endfor
  if v==1 && p>2 
    for j=2:pm1
      jp1=j+1;
      for i=1:n
        x(i,jp1)=x(i,2)^j;
      endfor
    endfor
  endif
  [U,S,V]=svd(x);
  for i=1:n 
    a(i)=0;
    for j=1:n
      a(i)=a(i)+U(j,i)*y(j);
    endfor
  endfor
  for i=1:p 
    b(i)=0;
    for j=1:p
      b(i)=b(i)+V(i,j)/S(j,j)*a(j);
    endfor
  endfor
  fprintf('\nCoeficientes da Equa��o de Regress�o:\n')
  b
  D=0; 
  for i=p+1:n
    D=D+a(i)^2;
  endfor
  sy=0;
  sy2=0; 
  for i=1:n
    sy=sy+y(i);
    sy2=sy2+y(i)^2;
  endfor
  fprintf('\nCoeficiente de Determina��o:\n\n')
  r2=1-D/(sy2-(sy^2)/n)
  fprintf('\nVari�ncia Residual:\n\n')
  sigma2=D/(n-p)
endfunction