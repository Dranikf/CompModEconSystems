function cellsResult = mobRepres(x , X , Y , vmVect)

	indCount = numel(X);
	cellsResult = {'Productive ', 'Consumer'; 'industries' []};

	for(i = 1:indCount)
		cellsResult(i + 2, 1) = {i};
		cellsResult(i + 2, indCount +2:indCount+3) = {Y(i) , X(i)};
		cellsResult(2 , i+1) = {i};

		cellsResult(indCount+ 3:indCount + 5, i+1) = {vmVect(1 , i) ;vmVect(2 , i) ; X(i)};

		for(j = 1:indCount)
			
			cellsResult(i+2 , j+1) = {x(i,j)};

		end
	end

	cellsResult(1 , indCount + 1) = {'inductries'};
	cellsResult(1, indCount +2:indCount+3 ) = {'Y' , 'X'};
	cellsResult(indCount+ 3:indCount + 5, 1) = {'V';'m' ; 'X'};

end
