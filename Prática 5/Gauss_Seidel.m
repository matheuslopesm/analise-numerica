function [x, Iter, Info] = Gauss_Seidel (n, A, b, Toler, IterMax)
  for i=1:n
    x(i) = b(i)/A(i,i);
  endfor
  Iter = 0;
  while 1
    Iter = Iter+1;
    NormaNum = 0;
    NormaDen = 0;
    for i=1:n
      soma = 0;
      for j=1:n
        if i~=j
          soma = soma+A(i,j)*x(j);
        endif
      endfor
      v(i) = x(i);
      x(i) = (b(i)-soma)/A(i,i);
      t = abs(v(i)-x(i));
      if t>NormaNum
        NormaNum = t;
      endif
      if abs(x(i))>NormaDen
        NormaDen = abs(x(i));
      endif
    endfor
    NormaRel = NormaNum/NormaDen;
    #Iter, x, NormaRel
    if NormaRel<=Toler || Iter>=IterMax
      break;
    endif
  endwhile
  if NormaRel<=Toler
    Info = 0;
  else
    Info = 1;
  endif
endfunction
