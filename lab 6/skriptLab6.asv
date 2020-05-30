
syms x1;
syms x2;

disp('getted function');
f = (x1^(0.3))*(x2^(0.7))

disp('task 1+++++++++++++++++++++++++++++');

if(subs(f ,  {'x1'} , 0) ~= 0)
    disp('its not production function');
    return;
end
%
if(subs(f ,  {'x2'} , 0) ~= 0)
    disp('its not production function');
    return;
end

disp('first conditions completed');

dx1 = diff(f , 'x1');
dx2 = diff(f , 'x2');
subplot(2, 2, 1);
ezsurf(dx1, [0 3])
subplot(2, 2, 2);
ezsurf(dx2, [0 3])

d2x1 = diff(dx1, 'x1');
d2x2 = diff(dx2, 'x2');
subplot(2 , 2 , 3);
ezsurf(d2x1, [0 3]);
subplot(2, 2, 4);
ezsurf(d2x2, [0 3]);


disp('task 1+++++++++++++++++++++++++++++');

disp('task 2+++++++++++++++++++++++++++++');

tx1 = 0.02:0.001:3;

izo1 = (2./(tx1.^0.3)).^(10/7);
izo2 = (3./(tx1.^0.3)).^(10/7);
izo3 = (5./(tx1.^0.3)).^(10/7);

mainfigure = figure

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

disp('task 5+++++++++++++++++++++++++++++');
disp('calling a m-file generated for plot builded in task 4, whith some changes from me');
createfigure(tx1 , [izo1 ; izo2 ; izo3] , X1 , X2 , Z , [izoclinal1 ; izoclinal2 ; izoclinal3]);
disp('task 5+++++++++++++++++++++++++++++');

disp('task6 ++++++++++++++++++++++++++++++');
figure(mainfigure);

izokvantArray = [sym('(2/(x1^0.3))^(10/7)') , sym('(3/(x1^0.3))^(10/7)'), sym('(5/(x1^0.3))^(10/7)')];
izoklinArray = [sym('((1-(0.3))/0.3)*x1') , sym('((1-(0.3))/0.3)*x1*2') , sym('((1-(0.3))/0.3)*x1*3')];

fileID = fopen('/home/dranik/KFA/programming/MatLab/CompModEconSystems/lab 6/pointsFile' , 'w');
fprintf(fileID, '%s \n', 'x   y')

for (izokv = izokvantArray)
	for(izokl = izoklinArray)
		pX = fzero(matlabFunction(izokv - izokl) , 3);
		pY = subs(izokv , pX);
		plot(pX, pY , '.r' , 'MarkerSize' , 20);
		fprintf(fileID , '%s \n' , [num2str(pX) , '   ' , num2str(pY)]);
	end
end
fclose(fileID);
disp('task6 ++++++++++++++++++++++++++++++')
