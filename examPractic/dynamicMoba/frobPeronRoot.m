function [S , K] = frobPeronRoot(F , A)

	indCount = sqrt(numel(A));

	E = eye(indCount);
	B = inv(E - A);
	Fline = F*B;

	[V ,D] = eig(Fline)

	tempMax = 0;
	index = 1;
	for(i = 1:indCount)
		if(tempMax < abs(D(i, i)))
			tempMax = abs(D(i , i));
			index = i;
		end
	end

	S = D(index , index);
	K = V(: , index);
	K = K ./ sum(K);
end
