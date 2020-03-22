
function task3Lab3(expr, valVec)
	vars = symvar(expr);

	expr = KFGrad(expr) * (vars).'

    result = subs(expr, vars ,  valVec);

	disp(['result is ' , num2str(result)]);
end

%result is
%  task3Lab3(sym('log(1+x+y^2+z^2)'), [0 0 0])
%  

% expr =
%  
% (2*y^2)/(y^2 + z^2 + x + 1) + (2*z^2)/(y^2 + z^2 + x + 1) + x/(y^2 + z^2 + x + 1)
%  
% result is 0