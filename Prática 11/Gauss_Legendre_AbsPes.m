function [T, W, info] = Gauss_Legendre_AbsPes (n)
  if n < 1
    info = -1;
    return;
  endif
  toler = 10^-15;
  iter_max = 30;
  info = 0;
  m = fix(n / 2);
  pi8 = 3.141592653589793;
  for i = 1 : m
    z = cos((i - 0.25) / (n + 0.5) * pi8);
    delta = 1 + toler;
    iter = 0;
    while (true)
      p1 = 1;
      Pz = z;
      for k = 2 : n
        p0 = p1;
        p1 = Pz;
        Pz = ((2 * k - 1) * z * p1 - (k - 1) * p0) / k;
      endfor
      DPz = n * (p1 - z * Pz) / (1 - z^2);
      if abs(delta) <= toler || iter == iter_max
         break;
      endif
      delta = Pz / DPz;
      z = z - delta;
      iter = iter + 1;
    endwhile
    if abs(delta) <= toler
      T(i) = -z;
      T(n + 1 - i) = z;
      W(i) = 2 / ((1 - z^2) * DPz^2);
      W(n + 1 - i) = W(i);
    else
      T(i) = 0;
      T(n + 1 - i) = 0;
      W(i) = 0;
      W(n + 1 - i) = 0;
      info = info + 1;
    endif
  endfor
  if rem(n, 2) ~= 0
    T(m + 1) = 0;
    W(m + 1) = pi8 / 2 * e * (gammaln((n + 1) / 2) - gammaln(n / 2 + 1))^2;
  endif
endfunction
