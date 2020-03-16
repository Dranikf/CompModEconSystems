
function task3Lab3(expr, valVec)
	vars = symvar(expr);
	% KFGrad - !!!!!!!!!!!!!!!!!!!
	% isert it!
	expr = KFGrad(expr) * (vars).';
	result = subs(expr , vars, valVec);

	disp(['result is ' , num2str(result)]);
end
