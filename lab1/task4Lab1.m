x = [0 2 4 6];
y = [1 -2 0 4];
a = plot(x , y , 'g--');
set(a, 'LineWidth' , 1.5);
hold on;


x2 = 0:0.1:6;
a = plot(x2 , (x2.^2).*sin(x2) , 'm');
set(a, 'LineWidth' , 0.25);

title('two plots');
legend('lomanaya' , 'gladkaya' , 'Location' , 'SouthEastOutside');