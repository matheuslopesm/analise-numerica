function L = Limites_Raizes (n, c)
  n1 = n + 1;
  if rem(n, 2) == 0
    sinal = 1;
  else
    sinal = -1;
  endif
  for i = 1 : n1
    MatC(i, 1) = c(i);
    MatC(n1 + 1 - i, 2) = c(i);
    MatC(i, 3) = sinal * c(i);
    sinal = -sinal;
    MatC(n1 + 1 - i, 4) = MatC(i, 3);
  endfor
  for j = 1 : 4
    if MatC(1, j) < 0
      for i = 1 : n1
        MatC(i, j) = - MatC(i, j);
      endfor
    endif
    B = 0;
    for i = n1 : -1 : 2
      if MatC(i, j) < 0
        k = i;
        if abs(MatC(i, j)) > B
          B = abs(MatC(i, j));
        endif
      endif
    endfor
    if B ~= 0
      L(j) = 1 + (B / MatC(1, j))^(1 / (k - 1));
    else
      L(j) = 10^10;
    endif
  endfor
  aux = L(1);
  L(1) = 1 / L(2);
  L(2) = aux;
  L(3) = - L(3);
  L(4) = - 1 / L(4);
endfunction
