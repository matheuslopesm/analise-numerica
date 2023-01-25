% Informa��es/fonte do pacote load symbolic
% https://wiki.octave.org/Symbolic_package
clear
clc
pkg load symbolic;
syms f(x);
f(x) =  sin(x);

x = 2;

Maclaurin = 0;
for i = 1:6
  Maclaurin += eval(f(0))*x^i/factorial(i);
  f = diff(f);
endfor
Erro = (abs(sin(2)-Maclaurin))/abs(sin(2));
clc
Maclaurin
disp('sen(2) = '), disp(sin(2));
Erro
