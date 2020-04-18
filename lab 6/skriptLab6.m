
function skriptLab6
syms x1;
syms x2;

disp('getted function');
f = (x1^(0.3))*(x2^(0.7));

disp('task 1+++++++++++++++++++++++++++++');

if(subs(f ,  {'x1'} , 0) ~= 0)
    disp('its not production');
    return;
end

if(subs(f ,  {'x2'} , 0) ~= 0)
    disp('its not production');
    return;
end

disp('task 1+++++++++++++++++++++++++++++');

disp('task 2+++++++++++++++++++++++++++++');

tx1 = 0.02:0.001:3;

izo1 = (2./(tx1.^0.3)).^(10/7);
izo2 = (3./(tx1.^0.3)).^(10/7);
izo3 = (5./(tx1.^0.3)).^(10/7);

subplot(1 ,2 ,1);
plot(tx1 , izo1 , tx1 , izo2 , tx1 , izo3);
axis square;
title('my isoquants');


subplot(1 ,2 ,2);
[X1 , X2] = meshgrid(0:0.1:10);
Z = subs(f , {x1 x2} , {X1 X2});

[C,H] = contour(X1 , X2 , Z  , [2 3 5]);
axis square;
clabel(C,H);
title('isoquants by contour');

disp('task 2+++++++++++++++++++++++++++++');

disp('taks 3+++++++++++++++++++++++++++++');

izoclinal1 = ((1-(0.3))/0.3)*tx1;
izoclinal2 = 2.*izoclinal1;
izoclinal3 = 3.*izoclinal1;

hold on;
plot(tx1 , izoclinal1 , tx1 , izoclinal2 , tx1 , izoclinal3);

disp('taks 3+++++++++++++++++++++++++++++');

disp('task6 ++++++++++++++++++++++++++++++');

% temp = sym('x1^');
% izofuns = [sym() ,sym(' (3/(x1^0.3))^(10/7) - x2') , sym(' (5/(x1^0.3))^(10/7) - x2')];
% 
% izoclinfuns = [sym('((1-(0.3))/0.3)*x1 - x2') , sym('2*((1-(0.3))/0.3)*x1
% - x2') ,sym('3*((1-(0.3))/0.3)*x1 - x2')];

 x0 = [-5 -5];
[x , fval] = fsolve(@myfun,x0)
%plot(x(1) , fval(1) , 'r.' , 'MarkerSize' , 20)

disp('task6 ++++++++++++++++++++++++++++++');



disp('task 5+++++++++++++++++++++++++++++');
disp('calling a m-file generated for plot builded in task 4, whith some changes from me');
createfigure(tx1 , [izo1 ; izo2 ; izo3] , X1 , X2 , Z , [izoclinal1 ; izoclinal2 ; izoclinal3]);
disp('task 5+++++++++++++++++++++++++++++');

end

function F = myfun(x)
F = [(x(1)^0.3)*(x(2)^0.7)-2;
      ((1-(0.3))/0.3)*x(1) - x(2)];
end