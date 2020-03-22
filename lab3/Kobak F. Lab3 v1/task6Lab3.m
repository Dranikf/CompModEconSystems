
disp('task a result is ');
quadl(@(x) exp(x.*log(x+1))' , 0 , 4)

disp('task b result is ')
quadl(@(x) x.*cos(2.*x) , 0 , 2*pi)

disp('task v result is ')
quadl(@(x) exp(-x) .*x , 0 , Inf)

disp('symbolic value is')
int(sym('exp(-x) * x'), 0 , Inf)

% result
% task a result is 
% 
% ans =
% 
%   274.1426
% 
% task b result is 
% 
% ans =
% 
%  -1.1967e-009
% 
% task v result is 
% Warning: Minimum step size reached; singularity
% possible. 
% > In quadl at 101
%   In task6Lab3 at 9
% 
% ans =
% 
%    NaN
% 
% symbolic value is
%  
% ans =
%  
% 1
 
