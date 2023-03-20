function [Integral, info] = Newton_Cotes_1 (a, b, n, m)
  Integral = 0;
  info = 0;
  [d, c, info] = Coeficientes_Cotes(n);
  if rem(m, n) ~= 0 || m < 0
    info = info - 10;
  endif
  if info ~= 0
    return;
  endif
  h = (b - a) / m;
  j = 0;
  for i = 0 : m
    x = a + i * h;
    y = -3*x^3 + (3/2)*x^2 + 5;
    j = j + 1;
    k = c(j);
    if rem(i, n) == 0 && i ~= 0 && i ~= m
      k = k + k;
      j = 1;
    endif
    Integral = Integral + y * k;
  endfor
  Integral = n * h / d * Integral;
endfunction
