f1 = sym('x^4 - x^2 = y');
f2 = sym('5^(-x) = y');

solves = solve(f1 , f2);

% для орисования графика просто найдем максимальный
% и минимальнеый ч пересечений 
% и с некоторым запасом (10) зададим  x
x = min(double(solves.x)) - 10:0.1: max(double(solves.x)) + 10;
plot(x , x.^4 - x.^2 , x , 5.^(-x));

disp('solutions X:'); solves.x
disp('solutions Y:'); solves.y