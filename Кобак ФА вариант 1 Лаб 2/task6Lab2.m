disp('part a');
a = sym('1/(1 + 1 /(1 + 1/x))');
simplify(a)

disp('part b');
b = sym('tan(x)^(-2) - cos(x)^2 - tan(x)^(-2) * cos*(x)^2');
simple(b)

%result 
% task6Lab2()
% part a
%  
% ans =
%  
% 1/(4*x + 2) + 1/2
%  
% part b
%  
% simplify:
%  
% ((sin(x)^2 - 1)*(sin(x)^2 + x^2*cos - 1))/sin(x)^2
%  
%  
% simplify(100):
%  
% -(cos(x)^2*(cos(x)^2 - x^2*cos))/(cos(x)^2 - 1)
%  
%  
% combine(sincos):
%  
% 1/tan(x)^2 - cos(2*x)/2 - (x^2*cos)/tan(x)^2 - 1/2
%  
%  
% combine(sinhcosh):
%  
% 1/tan(x)^2 - cos(x)^2 - (x^2*cos)/tan(x)^2
%  
%  
% combine(ln):
%  
% 1/tan(x)^2 - cos(x)^2 - (x^2*cos)/tan(x)^2
%  
%  
% factor:
%  
% -(cos(x)^2*tan(x)^2 + x^2*cos - 1)/tan(x)^2
%  
%  
% expand:
%  
% 1/tan(x)^2 - cos(x)^2 - (x^2*cos)/tan(x)^2
%  
%  
% combine:
%  
% 1/tan(x)^2 - cos(x)^2 - (x^2*cos)/tan(x)^2
%  
%  
% rewrite(exp):
%  
% (exp(2*x*i) + 1)^2/(exp(2*x*i)*i - i)^2 - (1/2*exp(i*x) + 1/2*exp(-i*x))^2 - (x^2*(exp(2*x*i) + 1)^2*cos)/(exp(2*x*i)*i - i)^2
%  
%  
% rewrite(sincos):
%  
% cos(x)^2/sin(x)^2 - cos(x)^2 - (x^2*cos(x)^2*cos)/sin(x)^2
%  
%  
% rewrite(sinhcosh):
%  
% - cosh(-i*x)^2 - cosh(-x*i)^2/sinh(-x*i)^2 + (x^2*cosh(-x*i)^2*cos)/sinh(-x*i)^2
%  
%  
% rewrite(tan):
%  
% 1/tan(x)^2 - (tan(x/2)^2 - 1)^2/(tan(x/2)^2 + 1)^2 - (x^2*cos)/tan(x)^2
%  
%  
% mwcos2sin:
%  
% sin(x)^2 - (sin(x)^2 - 1)/sin(x)^2 + (x^2*(sin(x)^2 - 1)*cos)/sin(x)^2 - 1
%  
%  
% collect(x):
%  
% FAIL
%  
%  
% ans =
%  
% 1/tan(x)^2 - cos(x)^2 - (x^2*cos)/tan(x)^2