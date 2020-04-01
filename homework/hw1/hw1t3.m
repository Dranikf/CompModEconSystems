function [matSol , sysSol] = hw1t3(m , b)

	b = reshape(b , numel(b) , 1)
	mSol = inv(m) * b;

	disp('matrix solution');
	mSol

	linSystem = linSysByMat(m, b);
	sysSol = solve(linSystem);
	disp('system solution');
	disp(num2str(double(sysSol.x1)));	
	disp(num2str(double(sysSol.x2)));	
	
	x = mSol(1)-5:0.1:mSol(1) + 5;
	breakets = [mSol(1)-5, mSol(1)+5]; 
	ybreakets = [mSol(2) - 5 , mSol(2) + 5];
	ezplot(linSystem(1), breakets, ybreakets) ;
	hold on;
	ezplot(linSystem(2), breakets, ybreakets);
	title('graphic solution');
	plot(mSol(1) , mSol(2) , 'or');

	

	line([breakets(1) , mSol(1)] , [mSol(2) , mSol(2)] ,'Color' , 'k' , 'LineStyle' , '--' );
	line([mSol(1) , mSol(1)] , [ybreakets(1) , mSol(2)] ,'Color' , 'k' , 'LineStyle' , '--' );

end
