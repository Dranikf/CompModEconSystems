e1 = sym('3*x + 4*y + 5*z - 2');
e2 = sym('2*x - 3*y +7*z + 1');
e3 = sym('x - 6*y + z -3');

[x , y , z] = solve(e1, e2 , e3);
result = [double(x) , double(y) , double(z)]

% solution checking
A = [3 4 5; 2 -3 7; 1 -6 1];
result2 =  inv(A)*[2 ; -1 ; 3]

% script result 
%  task3Lab2()
% 
% result =
% 
%     2.6196   -0.2283   -0.9891
% 
% 
% result2 =
% 
%     2.6196
%    -0.2283
%    -0.9891
