% def - is integral definite

function task5Lab3(f,def , a , b)
	

	if(~def)
		result = int(f);
	else	
		result = int(f ,a , b);
	end

	disp('result is ');
	disp(result);

	a = whos('result');
	disp(['type of result is ' , a.class]);


	vars = symvar(result);
	
	if(numel(vars))
		disp('checking of right of result ');
		disp(expand(diff(result)));
	else
		disp('can not differentiate, no variables in result');
	end
end

%++++++++++++++++++++++++++++++++++++
%result for a)
% task5Lab3(sym('x * log(x)') , false)
% result is 
% (x^2*(log(x) - 1/2))/2
%  
% type of result is sym
% checking of right of result 
% x*log(x)
%++++++++++++++++++++++++++++++++++++
% result for b)
%++++++++++++++++++++++++++++++++++++
% task5Lab3(sym('x * exp(x)') , false)
% result is 
% exp(x)*(x - 1)
%  
% type of result is sym
% checking of right of result 
% x*exp(x)
%++++++++++++++++++++++++++++++++++++
%result for v)
% task5Lab3(sym('exp(-x)*x') , true , 0 , Inf)
% result is 
% 1
%  
% type of result is sym
% can not differentiate, no variables in result
