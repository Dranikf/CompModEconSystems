disp('task a)');
symsum(sym('(2*k - 2) / 2^k') , 'k' , 3 , 10)

disp('task b');
symsum(sym('(k+1) * (x^k)') , 'k' , 1 , Inf)

disp('task v')
symsum(sym('1/(k^2)') , 'k' , 1 , Inf)
% result
% task a)
%  
% ans =
%  
% 757/512
%  
% task b
%  
% ans =
%  
% piecewise([x = 1, Inf], [x <> 1, limit(-(x^k*(k - k*x + 1))/(x - 1)^2, k = Inf) - (x*(x - 2))/(x - 1)^2])
%  
% task v
%  
% ans =
%  
% pi^2/6
%  