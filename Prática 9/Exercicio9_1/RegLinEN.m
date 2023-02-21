function RegLinEN(n,v,p,x,y)
  if ((v>1) && (v+1~=p))
    disp('Modelo nao permitido');
    CondErro=1;
    return 
  endif
  CondErro=0;
  vp1=v+1;
  pm1=p-1;
  for i=1:n
    for j=vp1:-1:2
      x(i,j)=x(i,j-1);
    endfor
    x(i,1)=1;
  endfor
  if ((v==1)&&(p>2))
    for j=2:pm1
      jp1=j+1;
      for i=1:n
        x(i,jp1)=(x(i,2))^j;
      endfor
    endfor
  endif
  for i=1:p
    for j=1:p
      soma=0;
      for k=1:n
        soma=soma+x(k,i)*x(k,j);
      endfor
      sxx(i,j)=soma;
    endfor
    soma=0;
    for k=1:n
      soma=soma+x(k,i)*y(k);
    endfor
    sxy(i)=soma;
  endfor
  [L,Det,CondErro]=Cholesky(p,sxx);
  [t]=SubsSucessivas(p,L,sxy);
  for i=1:p
    for j=1:i
      U(j,i)=L(i,j);
    endfor
  endfor
  fprintf('\nCoeficientes da Equação de Regressão:\n')
  [b]=SubsRetroativas(p,U,t)
  D=0;
  sy2=0;
  for i=1:n
    u=0;
    for j=1:p
      u=u+b(j)*x(i,j);
    endfor
    d=y(i)-u;
    D=D+d^2;
    sy2=sy2+y(i)^2;
  endfor
  fprintf('\nCoeficiente de Determinação:\n\n')
  r2=1-D/(sy2-sxy(1)^2/n)
  fprintf('\nVariância Residual:\n\n')
  Sigma2=D/(n-p)
endfunction