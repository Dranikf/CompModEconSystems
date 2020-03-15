e1 = sym('3*x - 9*y +8*z -2');
e2 = sym('2*x - 3*y + 7*z + 1');
e3 = sym('x - 6*y + z -3');


[x, y ,z] = solve(e1, e2 , e3)
% LOOK PDF
% получено бе�?конечное множе�?тво решений, очевидно, что в проц решени�? 
% две �?троки оказали�?ь пропорциональны, потому переменна�? z может принимать
% любые заначени�?, от его выбора уже будут уже зави�?еть x и y

A = [3 -9 8; 2 -3 7; 1 -6 1];

result = inv(A) * [2; -1; 3];

disp([ 'rank of matrix is ' , num2str(rank(A))]);


% % task4Lab2
%  
% x =
%  
% - (13*z1)/3 - 5/3
%  
%  
% y =
%  
% - (5*z1)/9 - 7/9
%  
%  
% z =
%  
% z1
%  
% Warning: Matrix is close to singular or badly scaled.
%          Results may be inaccurate. RCOND = 4.189521e-018. 
% > In task4Lab2 at 14
% rank of matrix is 2
