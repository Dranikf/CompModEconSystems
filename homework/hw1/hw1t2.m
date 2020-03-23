function [mSol , sysSol] = hw1t2(m , b)
	
	b = reshape(b , numel(b) , 1);
	mSol = inv(m) * b;
	
	linSystem = linSysByMat(m , b);	
	sysSol = solve(linSystem);

end
