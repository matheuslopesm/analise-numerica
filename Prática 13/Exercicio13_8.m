%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

%Primeiro polinomio
c = [-4 3 25];
a = -1;

y1 = Horner (c, a)

a = 2;
y2 = Horner (c,a);

%Segundo polinomio
c = [-10 2 -8 -4 3 5];
a1 = -1;

y3 = Horner(c,a1);

a1 = -10;
y3 = Horner(c,a1);
