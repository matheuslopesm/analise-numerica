%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%

x = linspace(0,1,3);
[Den, VetC, info] = Coeficientes_Cotes (2);
y = VetC./Den;
plot(x,y,"-b");

