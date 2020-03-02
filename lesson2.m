% по�?троение кра�?ивого графика дл�? визуализации модели �?про�?а - предложени�?

x = 0:0.1:10;

supply = sym('-0.5*x^2 + 40');
demand = sym('2*x^2 -7');


supplyPlot = ezplot(supply , [0 10]);
hold on;
set(supplyPlot , 'Color' , 'black')

demandPlot = ezplot(demand ,  [0 10]);
set(demandPlot , 'Color' , 'b')

xlabel('price');
ylabel('Q');
title('demand/supply');

x = 0:0.1:10;
plot(x , zeros(1 , numel(x)) , 'r');


legend('supply' , 'demand');
% вот тут обидно, что �? не могу во�?пользовать�?�? уже �?озданным �?имвольным supply!!!
% ведь к нему в конце надо допи�?ать '= y'
solution = solve('-0.5*x^2 + 40 = y' , '2*x^2 -7 = y');

% ������ ������ ������ ������������� �������

avalSolx = []; avalSoly = []; % ��� ������ ������������� �������
for i = 1:numel(solution.x)
	if double(solution.x(i)) >0 && double(solution.y(i)) > 0
		avalSolx = [avalSolx , solution.x(i)];
		avalSoly = [avalSoly , solution.y(i)];
	end
end

% here draw will draw some elements for solutions
for i = 1:numel(avalSolx)
	plot(avalSolx(i) , avalSoly(i) , 'ro');	
	tempX = 0:0.1:avalSolx(i);
	plot(tempX, ones(1, numel(tempX)) * avalSoly(i), '--');
	tempY = 0:0.1:avalSoly(i);
	plot(ones(1 , numel(tempY))* avalSolx(i) , tempY , '--');
end
	
