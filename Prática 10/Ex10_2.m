%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%

% Função 1
a = -1;
b = 2;
n = 1;
m = 1;
[Integral1, info] = Newton_Cotes_1 (a, b, n, m);

n2 = 2;
m2 = 18;
[Integral2, info] = Newton_Cotes_1 (a, b, n2, m2);

n3 = 3;
m2 = 18;
[Integral3, info] = Newton_Cotes_1 (a, b, n3, m2);

% Função 2
a2 = -0.5;
b2 = 0.5;
n4 = 3;
m3 = 1;
[Integral2_1, info] = Newton_Cotes_2 (a2, b2, n4, m3);

n4 = 4;
m3 = 32;
[Integral2_2, info] = Newton_Cotes_2 (a2, b2, n4, m3);

n4 = 5;
m3 = 32;

[Integral2_3, info] = Newton_Cotes_2 (a2, b2, n4, m3);

% Função 3
a3 = 1;
b3 = 7;
n5 = 1;
m4 = 3;
[Integral3_1, info] = Newton_Cotes_3 (a3, b3, n5, m4)
n5 = 2;
[Integral3_2, info] = Newton_Cotes_3 (a3, b3, n5, m4)
n5 = 3;
[Integral3_3, info] = Newton_Cotes_3 (a3, b3, n5, m4)
m4 = 15
[Integral3_4, info] = Newton_Cotes_3 (a3, b3, n5, m4)




