% y - is vector of final exrice
% de - is a vector of depreciation expense
% A - direct costs matrix 
% in - industry names
%
% x - gross output vector
% X - gintersectoral supplies matrix
% Z - relatively clean products vector
% p - prices vector

function [x , X , Z , p] = leontModResults(A, in , y , DE)

	indCount = numel(in);
    eye(indCount);
    E = eye(indCount);
	% firstly need find vector of gross output
    B = inv(E - A);
	x = B*y';
    
    X = [];%intersectoral supplies
    
	for i = 1:indCount
        % intersectoral supplies
        for j = 1:indCount
			
           	%X = [X , A(i , j) * x(j)]; first error variant
            X(i , j) = A(i , j) * x(j); % ok variant
        end
        disp(['gross output for industry ' , in(i) ,' ' , num2str(x(i))])
    end

    X = reshape(X , indCount , indCount);
   
   	Z = [];
 	for(j = 1:indCount)	

		Z(j) = x(j) - sum(X(:, j))- DE(j);

	end

	p = inv(eye(indCount) - A')*(DE'+Z');
    
end
