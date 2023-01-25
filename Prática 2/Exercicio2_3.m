n = input('Informe um numero:');

f = zeros(n,1);
f(1) = 1;
f(2) = 1;
for i = 3:n
  f(i) = f(i-1) + f(i-2);
endfor
f
