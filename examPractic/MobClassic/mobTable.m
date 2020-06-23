function resultCells = mobTable(A , Y , t)

	%global values+++++++++++++++++++++++
	indCount = size(A);
	indCount = indCount(1);
	E = eye(indCount);
	%global values+++++++++++++++++++++++

	disp('total material costs matrix')
	B = inv(E - A)
	disp('vector of gross output');
	X = B*Y
	sysM = [1 1; -t 1];

	for(j = 1:indCount)

		x(: , j) = A(: , j) .* X(j); 
		sysB = [X(j) - sum(x(:,j)); 0 ];

		vmVect(: , j) = inv(sysM)*sysB;

	end

    resultCells = mobRepres(x , X , Y , vmVect);


end	
