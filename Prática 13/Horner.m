function y = Horner (c, a)
  n = length(c);
  y = c(1);
  for i = 2 : n
    y = y * a + c(i);
  endfor
endfunction
