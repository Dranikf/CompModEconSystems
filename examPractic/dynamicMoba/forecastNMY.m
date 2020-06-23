function Y = forecastNMY(A , F , Y0 , time)

	%initialisation+++++++++++++++++++
	indCount = sqrt(numel(A));

	E = eye(indCount);
	B = inv(E - A);
	Fline = F*B;
	Fwave = inv(Fline);
	%initialisation+++++++++++++++++++

	% building of a system++++++++++++
	symSystem = zeros(indCount , 1);

	for(i = 1:indCount)

		variable = sym(['y('  num2str(i) ')']);
		symSystem = symSystem + variable * Fwave(: , i);

	end
	% building of a system++++++++++++
	

	syms t y;
	msys = matlabFunction(symSystem , 'vars' , [t y]);
	
	[T , Y] = ode45(msys , [0 time] , Y0);
	
	Y = Y(numel(Y)/indCount, :);

end
