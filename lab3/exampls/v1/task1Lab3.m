disp('+++++++++A task +++++++++++');
a = sym('2*x -1 / x^2 + 2');
disp('detivetive function for ');
disp(a); disp( ' is ');
disp(diff(a));

disp('+++++++++B task+++++++++++');
b = sym('atan(x^2 + 1)');
disp('detivetive function for ');
disp(b); disp( ' is ');
disp(diff(b));
disp(' and simplifyed');
disp(expand(diff(b)));

% Result
% +++++++++A task +++++++++++
% detivetive function for 
% 2*x - 1/x^2 + 2
%  
%  is 
% 2/x^3 + 2
%  
% +++++++++B task+++++++++++
% detivetive function for 
% atan(x^2 + 1)
%  
%  is 
% (2*x)/((x^2 + 1)^2 + 1)
%  
%  and simplifyed
% (2*x)/(x^4 + 2*x^2 + 2)
