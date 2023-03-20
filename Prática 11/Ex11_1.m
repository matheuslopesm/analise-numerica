%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

a = -1;
b = 2;
n = 1;
m = 3;
[Integral_n1, info] = Newton_Cotes_1 (a, b, n, m)
n2 = 2;
[Integral_n2, info] = Newton_Cotes_1 (a, b, n, m)
n3 = 3;
[Integral_n3, info] = Newton_Cotes_1 (a, b, n, m)
[Integral_g1, info] = Gauss_Legendre_4 (a, b, m)

