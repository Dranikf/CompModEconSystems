function hw1t4(syst)

	solution = solve(syst);
	disp('system solution');

	disp([solution.x , ' ' , solution.y]);

	fx = double(solution.x(1)); fy = double(solution.y(1));
	
	disp('and as a double ');
	disp(num2str(fx));
	disp(num2str(fy));

	mSol = [fx , fy];
	x = mSol(1)-5:0.1:mSol(1) + 5;
	breakets = [mSol(1)-5, mSol(1)+5]; 
	ybreakets = [mSol(2) - 5 , mSol(2) + 5];
	ezplot(syst(1), breakets, ybreakets) ;
	hold on;
	ezplot(syst(2), breakets, ybreakets);
	title('graphic solution');
	plot(mSol(1) , mSol(2) , 'or');

	

	line([breakets(1) , mSol(1)] , [mSol(2) , mSol(2)] ,'Color' , 'k' , 'LineStyle' , '--' );
	line([mSol(1) , mSol(1)] , [ybreakets(1) , mSol(2)] ,'Color' , 'k' , 'LineStyle' , '--' );	

end
