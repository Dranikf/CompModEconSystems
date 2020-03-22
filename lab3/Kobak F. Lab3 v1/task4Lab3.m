% d - symbolic for double derivative
% c1,2 - symbolics for mixed derivative

function task4Lab3(f, d , c1, c2)

	disp('input function is');
	disp(f);
	
	disp(['second derivative by ' , d , ' is '])	
	disp(diff(f ,d , 2));
	disp(['mixed derivetive by ' , c1 , ' and ' , c2 , ' is ']);
	disp(diff(diff(f , c1) , c2));
end

%result
% open task4Lab3.m
% task4Lab3(sym('x^2 * sin(y) + y^2 * sin(z) + z^2 * sin(x)') , 'y' , 'x' , 'z')
% input function is
% x^2*sin(y) + z^2*sin(x) + y^2*sin(z)
%  
% second derivative by y is 
% 2*sin(z) - x^2*sin(y)
%  
% mixed derivetive by x and z is 
% 2*z*cos(x)
