%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

% Função 1
a = 1;
b = 3;
n = 1;
[Integral_1, info] = Gauss_Legendre_1 (a, b, n)

n = 2;
[Integral_2, info] = Gauss_Legendre_1 (a, b, n)

n = 3;
[Integral_3, info] = Gauss_Legendre_1(a, b, n)

% Função 2

n = 3;
[Integral_4, info] = Gauss_Legendre_2(a, b, n)

n = 4;
[Integral_5, info] = Gauss_Legendre_2(a, b, n)

n = 5;
[Integral_6, info] = Gauss_Legendre_2(a, b, n)

% Função 3

a = -pi/4;
b = pi/2;

n = 1;
[Integral_7, info] = Gauss_Legendre_3(a, b, n)
n = 2;
[Integral_8, info] = Gauss_Legendre_3(a, b, n)
n = 3;
[Integral_9, info] = Gauss_Legendre_3(a, b, n)

n = 20
[Integral_10, info] = Gauss_Legendre_3(a, b, n)
