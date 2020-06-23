function [isOK , result] = GDPbyMobTable(mobTable)

	indCount = size(mobTable);
	indCount = indCount(1) - 5;
	
	X = cell2mat(mobTable(3:2+indCount,indCount + 3));
	x = cell2mat(mobTable(3:indCount+2 , 2:indCount+1));
	vmVect = cell2mat(mobTable(indCount+3:indCount+4 , 2:indCount+1));
	Y = cell2mat(mobTable(3:2+indCount,indCount + 2));

	% production way+++++++++++++++
	prodGDP =  round(sum(X) - sum(sum(x)));
	
	% Summation of gross value added of industries
	sumCosts = round(sum(sum(vmVect)));

	% sum of final demand
	sumDemand = round(sum(Y));

	if(prodGDP == sumCosts & sumCosts == sumDemand)
		isOK = true;
		result = sumDemand;
		return;
	end

	isOK = false; result = 0;
end
