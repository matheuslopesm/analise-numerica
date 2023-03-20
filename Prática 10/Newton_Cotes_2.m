function [Integral, info] = Newton_Cotes_2 (a, b, n, m)
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
    y = (4*(x^2))/exp(5*x);
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
