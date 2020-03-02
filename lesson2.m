% Ð¿Ð¾Ñ?Ñ‚Ñ€Ð¾ÐµÐ½Ð¸Ðµ ÐºÑ€Ð°Ñ?Ð¸Ð²Ð¾Ð³Ð¾ Ð³Ñ€Ð°Ñ„Ð¸ÐºÐ° Ð´Ð»Ñ? Ð²Ð¸Ð·ÑƒÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ð¼Ð¾Ð´ÐµÐ»Ð¸ Ñ?Ð¿Ñ€Ð¾Ñ?Ð° - Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ñ?

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
% Ð²Ð¾Ñ‚ Ñ‚ÑƒÑ‚ Ð¾Ð±Ð¸Ð´Ð½Ð¾, Ñ‡Ñ‚Ð¾ Ñ? Ð½Ðµ Ð¼Ð¾Ð³Ñƒ Ð²Ð¾Ñ?Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒÑ?Ñ? ÑƒÐ¶Ðµ Ñ?Ð¾Ð·Ð´Ð°Ð½Ð½Ñ‹Ð¼ Ñ?Ð¸Ð¼Ð²Ð¾Ð»ÑŒÐ½Ñ‹Ð¼ supply!!!
% Ð²ÐµÐ´ÑŒ Ðº Ð½ÐµÐ¼Ñƒ Ð² ÐºÐ¾Ð½Ñ†Ðµ Ð½Ð°Ð´Ð¾ Ð´Ð¾Ð¿Ð¸Ñ?Ð°Ñ‚ÑŒ '= y'
solution = solve('-0.5*x^2 + 40 = y' , '2*x^2 -7 = y');

% ¿¿¿¿¿¿ ¿¿¿¿¿¿ ¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿

avalSolx = []; avalSoly = []; % ¿¿¿ ¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿
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
	
