function [Integral, CondErro] = Newton_Cotes_Dupla(ax,bx,nx,mx,ay,by,ny,my)
	Integral = 0;
  CondErro = 0;
  d(1) = 2
	d(2) = 6;
	d(3) = 8;
	d(4) = 90;
	d(5) = 288;
	d(6) = 840;
	d(7) = 17280;
	d(8) = 28350;

	c(1) = 1;
	c(2) = 1;
	c(3) = 4;
	c(4) = 1;
	c(5) = 3;
	c(6) = 7;
	c(7) = 32;
	c(8) = 12;
	c(9) = 19;
	c(10) = 75;
	c(11) = 50;
	c(12) = 41;
	c(13) = 216;
	c(14) = 27;
	c(15) = 272;
	c(16) = 751;
	c(17) = 3577;
	c(18) = 1323;
	c(19) = 2989;
	c(20) = 989;
	c(21) = 5888;
	c(22) = -928;
	c(23) = 10496;
	c(24) = -4540;

	if(nx < 1 || nx > 8|| ny < 1 || ny > 8)
		CondErro += 1;
	endif
	if(rem(mx,nx) ~= 0 || rem(my,ny) ~= 0)
		CondErro += 2;
	endif
	if(CondErro ~= 0)
		return;
	endif

	px = fix(0.25 * (nx*(nx + 2) + rem(nx,2)));
	py = fix(0.25 * (ny*(ny + 2) + rem(ny,2)));

	hx = (bx-ax)/mx;
	hy = (by-ay)/my;

	for i = 0 : mx
    x = ax+ i *hx;
    jx = px+fix(0.5*nx-abs(rem(i,nx)-0.5*nx));
    kx = 1 + fix((nx-rem(i,nx))/nx) - fix((mx-rem(i,mx))/mx);

    for j = 0:my
      y = ay+j*hy;
      jy = py+fix(0.5*ny-abs(rem(j,ny)- 0.5 * ny));
      ky = 1 + fix((ny-rem(j,ny))/ny)- fix((my - rem(j,my))/my);
      fxy = -x^2*y +5*x;
      Integral = Integral + fxy* c(jx)*kx*c(jy)*ky;
    endfor
		Integral = nx*ny*hx*hy/(d(nx)*d(ny))*Integral;
	endfor
endfunction
