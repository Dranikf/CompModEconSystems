f = sym('x*log(x)') 
taylor(f , 5 , 1)
%result is 
% f =
%  
% x*log(x)
%  
%  
% ans =
%  
% x + (x - 1)^2/2 - (x - 1)^3/6 + (x - 1)^4/12 - 1