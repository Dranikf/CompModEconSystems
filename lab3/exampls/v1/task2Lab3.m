function task2Lab3(a, b) 
	disp('+++++++++A task +++++++++++');
	disp('second detivetive function for ');
	disp(a); disp( ' is ');
	disp(diff(a , 2));

	disp('+++++++++B task+++++++++++');
	disp('fourth detivetive function for ');
	disp(b); disp( ' is ');
	disp(diff(b , 4));
	disp(' and simplifyed');
	disp(expand(diff(b)));
end
% Result
% task2Lab3
% +++++++++A task +++++++++++
% second detivetive function for 
% 2*x - 1/x^2 + 2
%  
%  is 
% -6/x^4
%  
% +++++++++B task+++++++++++
% fourth detivetive function for 
% atan(x^2 + 1)
%  
%  is 
% (384*x^2*(x^2 + 1)^2)/((x^2 + 1)^2 + 1)^3 - (24*(x^2 + 1))/((x^2 + 1)^2 + 1)^2 - (96*x^2)/((x^2 + 1)^2 + 1)^2 - (768*x^4*(x^2 + 1)^3)/((x^2 + 1)^2 + 1)^4 + (384*x^4*(x^2 + 1))/((x^2 + 1)^2 + 1)^3
%  
%  and simplifyed
% (2*x)/(x^4 + 2*x^2 + 2)
