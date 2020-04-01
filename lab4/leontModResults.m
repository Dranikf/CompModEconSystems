% y - is vector of final exrice
% de - is a vector of depreciation expense
% A - direct costs matrix 
% in - industry names

function leontModResults(A, in , y , DE)
	
	indCount = numel(in);
    eye(indCount);
    E = eye(indCount);
	% firstly need find vector of gross output
    B = inv(E - A);
	x = B*(y');
    
    X = [];  % mejotraslevie postavki
    
	for i = 1:indCount
        % mejotraslevie postavki
        for j = 1:indCount
            X = [X , A(i , j) * x(i)];
        end
        disp(['gross output for industry ' , in(i) ,' ' , num2str(x(i))])
    end

    disp('mejotraslevie postavki matrix')
    X = reshape(X , indCount , indCount)
    
    disp('full costs matrix');
    B
    
end
