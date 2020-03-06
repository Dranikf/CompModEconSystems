% function show difference between surf , plot3 , mesh , meshc
% in X, Y with symbolic function symd

function diff3DPlots(symb, X , Y)

	% get var of sym
	variables = symvar(symb);
	if(numel(variables) ~= 2)
		disp('Incorrect symb');
		return;
	end

	[X , Y] =  meshgrid(X , Y);
	Z = subs(symb , {variables(1) , variables(2)} , {X ,Y});

	subplot(2 , 2 , 1 );
	surf(X, Y , Z);
	title('surf');

	subplot(2 ,2 ,2);
	plot3(X, Y ,Z);
	title('plot3')

	subplot(2 ,2 ,3);
	mesh(X , Y ,Z);
	title('mesh');

	subplot(2 ,2 , 4);
	meshc(X , Y , Z);
	title('meshc');
end
