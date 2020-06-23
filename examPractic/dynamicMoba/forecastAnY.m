function forecastAnY(A , F , Y0 , time)

    %initialisation+++++++++++++++++++
    indCount = sqrt(numel(A));

    E = eye(indCount);
    B = inv(E - A); 
    Fline = F*B;
    Fwave = inv(Fline);
    %initialisation+++++++++++++++++++

    % building of a system++++++++++++


    for(i = 1:indCount)
		variables = ['Dy' , num2str(i) '='];
		for(j = 1:indCount)
			
			 variables = [variables ,'+' ,  num2str(Fwave(i , j)) , '*y' , num2str(j)];

		end
		rv(i) = {variables};
    end 
    % building of a system++++++++++++
 	sol = dsolve(cell2mat(rv(1)) , cell2mat(rv(2)), cell2mat(rv(3)))

	y1 = subs(sol.y1 , 't' , 0)
	y2 = subs(sol.y2 , 't' , 0)
	y3 = subs(sol.y3 , 't' , 0)
	C = solve(y1 - Y0(1) , y2 - Y0(2), y3 - Y0(3))

	vars = symvar(sol.y1)

	Y(1) = subs(sol.y1 , {'t' , vars(1), vars(2), vars(3)} , {time , C.C13 , C.C14 , C.C15})	
	Y(2) = subs(sol.y2 , {'t' , vars(1), vars(2), vars(3)} , {time , C.C13 , C.C14 , C.C15}) 
	Y(3) = subs(sol.y3 , {'t' , vars(1), vars(2), vars(3)} , {time , C.C13 , C.C14 , C.C15}) 

	double(Y)

end
