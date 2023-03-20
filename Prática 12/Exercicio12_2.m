%%%%%%%%%%%%%%%%%%%%%%%%%
% Matheus Lopes Moreira %
%       20.2.8002       %
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

%Sim, é possível extrapolar o método para integração n-upla utilizando o mesmo
%princípio de subdivisão do domínio e soma ponderada das integrais dos subdomínios.

function integral = triple_integration(f, x1, x2, y1, y2, z1, z2, nx, ny, nz)
% f: função a ser integrada
% x1, x2: limites de integração na variável x
% y1, y2: limites de integração na variável y
% z1, z2: limites de integração na variável z
% nx, ny, nz: número de subintervalos em cada dimensão

hx = (x2 - x1) / nx;
hy = (y2 - y1) / ny;
hz = (z2 - z1) / nz;

integral = 0;

for i = 1:nx
  for j = 1:ny
    for k = 1:nz
      xi1 = x1 + (i - 1) * hx;
      xi2 = xi1 + hx;
      yj1 = y1 + (j - 1) * hy;
      yj2 = yj1 + hy;
      zk1 = z1 + (k - 1) * hz;
      zk2 = zk1 + hz;

      integral = integral + f(xi1,xi2,yj1,yj2,zk1,zk2);
    end
  end
end

integral = hx * hy * hz * integral;

end

