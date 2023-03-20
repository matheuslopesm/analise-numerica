%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

function integral = newton_cotes_composta(f, a, b, m, n)
% f: função a ser integrada
% a, b: limites de integração
% m: grau do polinômio de interpolação
% n: número de subintervalos

h = (b - a) / n;
integral = 0;

  for i = 0:n-1
      xi = a + i*h;
      yi = a + (i+1)*h;

      % pontos da fórmula de Newton-Cotes composta
      x = linspace(xi, yi, m+1);
      y = f(x);

      % coeficientes do polinômio de interpolação
      c = polyfit(x, y, m);

      % integral sobre o subintervalo
      subintegral = polyval(c, yi) - polyval(c, xi);

      integral = integral + subintegral;
  end

end

