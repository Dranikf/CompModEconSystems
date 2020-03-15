a = sym('67*x + 32 = 0')
solve(a)
digits(15);
res = solve(a);
sym(double(res), 'd')


solve('e^x - 8*x +4')

%result
% a =
%  
% 67*x + 32 = 0
%  
%  
% ans =
%  
% -32/67
%  
%  
% ans =
%  
% -0.477611940298507
%  
%  
% ans =
%  
% 1/2 - lambertw(0, -(e^(1/2)*log(e))/8)/log(e)