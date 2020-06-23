function forecastAnY2(A , F , Y0 , time)

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
		con(i) = {['y' , num2str(i) , '(0)=' , num2str(Y0(i))]};
    end 
    % building of a system++++++++++++
	
	
 	sol = dsolve(cell2mat(rv(1)) , cell2mat(rv(2)), cell2mat(rv(3)) , cell2mat(con(1)) , cell2mat(con(2)), cell2mat(con(3)));

	Y(1) = subs(sol.y1 , 't' , time);
	Y(2) = subs(sol.y2 , 't' , time);
	Y(3) = subs(sol.y3 , 't' , time); 

	double(Y)

end
