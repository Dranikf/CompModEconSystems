function task2Lab3(a, b) 
	disp('+++++++++A task +++++++++++');
	disp('second derivative function for ');
	disp(a); disp( ' is ');
	disp(diff(a , 2));

	disp('+++++++++B task+++++++++++');
	disp('fourth detivative function for ');
	disp(b); disp( ' is ');
	disp(diff(b , 4));
	disp(' and simplifyed');
	disp(expand(diff(b)));
end
% Result
% a
%  
% a =
%  
% 2*x - 1/x^2 + 1
%  
% b
%  
% b =
%  
% atan(x^2 + 1)
%  
% task2Lab3(a, b)
% +++++++++A task +++++++++++
% second derivative function for 
% 2*x - 1/x^2 + 1
%  
%  is 
% -6/x^4
%  
% +++++++++B task+++++++++++
% fourth detivative function for 
% atan(x^2 + 1)
%  
%  is 
% (384*x^2*(x^2 + 1)^2)/((x^2 + 1)^2 + 1)^3 - (24*(x^2 + 1))/((x^2 + 1)^2 + 1)^2 - (96*x^2)/((x^2 + 1)^2 + 1)^2 - (768*x^4*(x^2 + 1)^3)/((x^2 + 1)^2 + 1)^4 + (384*x^4*(x^2 + 1))/((x^2 + 1)^2 + 1)^3
%  
%  and simplifyed
% (2*x)/(x^4 + 2*x^2 + 2)