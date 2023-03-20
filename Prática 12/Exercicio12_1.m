%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc
ax = 2;
bx = 3;
nx = 2;
mx = 2;

ay = 0;
by = 2;
ny = 2;
my = 2;


[Integral, CondErro] = Newton_Cotes_Dupla(ax,bx,nx,mx,ay,by,ny,my)
