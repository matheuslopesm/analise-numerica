%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

%1
ax = 2;
bx = 3;
nx = 2;
mx = 2;

ay = 0;
by = 2;
ny = 2;
my = 2;


[Integral, CondErro] = Newton_Cotes_Dupla_2(ax,bx,nx,mx,ay,by,ny,my)

nx = 3;
mx = 3;

ny = 3;
my = 3;

[Integral_2, CondErro] = Newton_Cotes_Dupla_2(ax,bx,nx,mx,ay,by,ny,my)

%2
ax = 10;
bx = 11.5;
nx = 3;
mx = 3;

ay = 5;
by = 8;
ny = 3;
my = 3;

[Integral_3, CondErro] = Newton_Cotes_Dupla_3(ax,bx,nx,mx,ay,by,ny,my)

%3

ax = pi/2;
bx = pi;
nx = 2;
mx = 2;

ay = pi/4;
by = pi/2
ny = 2;
my = 2;

[Integral_4, CondErro] = Newton_Cotes_Dupla_4(ax,bx,nx,mx,ay,by,ny,my)
