% A - direct cost matrix
%a - is norm completed
%b - is Haukin-Saymon completed
%c - is inv(E - A) not negative

function [a , b , c] = leontModIsProd(A)

	a = false; b = false; c = false;

	s = size(A);

	if(s(1) ~= s(2) || s(1) == 0)
		return;
	end
	
	if(get1Norm(A') < 1)
		a = true;
	end
	
	EmA = eye(s(1)) - A;
    MM = getMMinors(EmA);

	if(min(MM) > 0)
		b = true;
	end

	if(det(EmA) ~= 0)
		invEmA = inv(EmA);
		if(min(invEmA) >= 0)
			c = true;
		end
	end

end
