% build level line of symbolic function symb
% in point

function getLineInPoint(symb , point)
	
	if(numel(point) ~= 2)
		disp( 'Incorrect Point');
		return;
	end

	% get var of sym
	variables = symvar(symb);
	if(numel(variables) ~= 2)
		disp('Incorrect symb');
		return;
	end
	
	% find Z  in point 
	pZ = subs(symb, {variables(1) , variables(2)} , {point(1) , point(2)});


	[X Y] = meshgrid(point(1) - 3:0.1:point(1) + 3 , point(2) - 3 :0.1:point(2) + 3);

	subplot(1 , 3 , 1);
	% contour ждет вектор
	% скаляр или вектор с одним значением не катит  - в доках написано, что скаляр последним аргументом
	% имеет другой смысл  
	%
	%документация: MatLab->UserGuide->Graphics->Creating Specisalised Plots -> Contour Plots 
	%+++++++++++++++++++++++++++++++++++++++++++++++++++
	%	The statements
	%	[X,Y,Z] = peaks;
	%	contour(X,Y,Z,20)
	%	display 20 contours of the peaks function in a 2-D view.
	%+++++++++++++++++++++++++++++++++++++++++++++++++++
	% оно расположит нарисует 20 линий а не линию соответсвующую высоте 20
	Z = subs(symb , {variables(1) , variables(2)} , {X ,Y });  
	contour(X , Y , Z  , pZ );
	subplot(1 , 3 , 2);

	% потому приходиться делать такой финт
	[C , h] = contour(X , Y , Z , [pZ pZ] );
	clabel(C ,h);

	subplot(1 , 3, 3);
	meshc(X , Y , Z);
end
