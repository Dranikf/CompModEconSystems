%vm PartsFormat!!!!!!!!!!!!!!!!!!!!!

%vmParts(1, i) - part of v in Y of industry i
%vmParts(2 ,i) = part of m in Y of industry i

%vm PartsFormat!!!!!!!!!!!!!!!!!!!!!

function mobTable = mobTableByParts(A , Y , vmParts)

    %global values+++++++++++++++++++++++
    indCount = size(A);
    indCount = indCount(1);
    E = eye(indCount);
    %global values+++++++++++++++++++++++

    disp('total material costs matrix')
    B = inv(E - A)
    disp('vector of gross output');
    X = B*Y 

    for(j = 1:indCount)

        x(: , j) = A(: , j) .* X(j); 

        vmVect(1 , j) = (Y(j) / sum(vmParts(: , j))) * vmParts(1 , j);
        vmVect(2 , j) = (Y(j) / sum(vmParts(: , j))) * vmParts(2 , j);

    end 

    mobTable = mobRepres(x , X , Y , vmVect);


end	
