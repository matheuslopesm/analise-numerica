function [Integral, info] = Gauss_Legendre_4 (a, b, n)
  [T, W, info] = Gauss_Legendre_AbsPes (n);
  if info ~= 0
    return;
  endif
  Integral = 0;
  info = 0;
  ba2 = (b - a) / 2;
  for i = 1 : n
    x = a + ba2 * (T(i) + 1);
    y = -3*x^3 + (3/2)*x^2 + 5;
    Integral = Integral + y * W(i);
  endfor
  Integral = ba2 * Integral;
endfunction
