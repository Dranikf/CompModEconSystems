function buildKDSurface(alpha, Lmax, Kmax)

	%global variables +++++++++++++++++++++++++++++++++
	gStep = 0.1; % grid step
	%global varuables +++++++++++++++++++++++++++++++++

	hande = figure('OuterPosition' , [1677 -3 1374 771])

	syms K L;

	expr = (K^alpha)*(L^(1-alpha));
	
	%ezsurf+++++++++++++++++++++++++++++++++
	subplot(2 ,2 , 1);
	ezsurf(expr ,  [0 Kmax 0 Lmax]);
	title('ezsurf');
	%ezsurf+++++++++++++++++++++++++++++++++


	%ezmesh+++++++++++++++++++++++++++++++++
	subplot(2 ,2 , 2);
	ezmesh(expr , [0 Kmax 0 Lmax]);
	title('ezmesh')
	%ezmesh+++++++++++++++++++++++++++++++++

	%creating grid++++++++++++++++++++++++++
	[l , k] = meshgrid(0:gStep:Lmax, 0:gStep:Kmax);
	x = subs(expr , {'L' 'K'} , {l k});
	%creating grid++++++++++++++++++++++++++

	%mesh+++++++++++++++++++++++++++++++++
	subplot(2, 2, 3);
	mesh(k , l , x);
	title('mesh');
	xlabel('K'); ylabel('L');
	%mesh+++++++++++++++++++++++++++++++++


	%surf+++++++++++++++++++++++++++++++++
	subplot(2 ,2 , 4);
	surf(k , l , x)
	title('surf');
	xlabel('K'); ylabel('L');
	%surf+++++++++++++++++++++++++++++++++
	

end
