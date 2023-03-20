%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

f = @(x) 3.*x.*cos(pi.*x);
quadcc (f, -pi/4, pi/2)

