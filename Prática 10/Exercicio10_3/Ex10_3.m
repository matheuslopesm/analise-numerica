%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

syms x;

disp('int(-3*x^3+(3/2)*x^2+5,x,-1,2) = 8.25')
disp('n=1 e m=1: I: -5.25')
disp('n=1 e m=18: I: 8.20833')
disp('n=2 e m=1: ERRO')
disp('n=2 e m=18: I: 8.25')
disp('n=3 e m=1:  ERRO')
disp('n=3 e m=18: I: 8.25')
disp('Nesse caso a regra foi v�lida, exceto nos casos onde os par�metros n�o eram compat�veis(ERRO)')
input('')

disp('int((4*x^2)/(exp(5*x)),x,-0.5,0.5) = 1.2322')
disp('n=3 e m=1 ERRO')
disp('n=3 e m=32 ERRO')
disp('n=4 e m=1 ERRO')
disp('n=4 e m=32 I: 1.23218 ')
disp('n=5 e m=1  ERRO')
disp('n=5 e m=32 ERRO')
disp('Nesse caso tivemos apenas um resultado e foi o valor correto da integra��o.')
disp('Os outros resultados, os par�metros eram incompat�veis com o m�todo(ERRO),')
disp('portanto n�o conseguimos ter uma boa avalia��o')
input('')

disp('int((20*sin(2*x))/x,x,1,7) = -0.9840')
disp('n=1 e m=3  I: 12.9385')
disp('n=1 e m=15 I: -0.511929')
disp('n=2 e m=3 ERRO')
disp('n=2 e m=15 ERRO ')
disp('n=3 e m=3  I: 6.67477')
disp('n=3 e m=15 I: -1.01024 ')
disp('Nesse caso, onde tivemos resultado a regra foi confirmada')
disp('obtivemos melhor resultado no maior grau de polin�mio com maior numero de subintervalos')



