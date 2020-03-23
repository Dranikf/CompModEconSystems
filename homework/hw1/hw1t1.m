x1 = 1:0.4:7;y1 = log(x1) + (x1.^2);

subplot(2 ,2 , 1);
plot(x1 , y1 , '-');
title('task 1)');

t = 0:pi/10:10*pi; x2 = t.*cos(t); y2 = t.*sin(t);

subplot(2, 2 , 2);
plot(x2 , y2, ':');
title('task 2)');

subplot(2, 2 , 3);
x3 = -4:0.3:4; y3 = sin(x3.^2) - cos(x3); y3_2 = x3.^2 - 4;
plot(x3 , y3,'-.or' ,  x3 , y3_2, ':xb');
title('task 3)');
legend('f' , 'y');

subplot(2 ,2 , 4);
x4 = -4:0.4:4; f = sin(x4.^2) + cos(x4) ; y = x4.^2 - 4; z = sqrt(abs(x4)) - 0.8;
plot(x4 , f , 'd' ,x4 , y , 'h' , x4 , z);
title('task 4)')
legend('f' , 'y' , 'z' ,'Location' ,  'Best');

