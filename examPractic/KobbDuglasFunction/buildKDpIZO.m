%input+++++++++++++++++++++++
%alpha - capital degree
%product - izokvants product value
%matgRateSub - marginal rate of substitution for isoklins
%input++++++++++++++++++++++++


function buildKDpIZO(alpha , product , matgRateSub)

	%global variables +++++++++++++++++++++++++++++++++
	gridStep = 1;
	markerSize = 30;
	d3LineWith = 10;
	Lmax = 10; Kmax = 10;
	%global varuables +++++++++++++++++++++++++++++++++

	hande = figure('OuterPosition' , [1677 -3 1374 771]);

	syms K L;

	expr = (K^alpha)*(L^(1-alpha));
	
	%ezsurf+++++++++++++++++++++++++++++++++
	a = subplot(1 ,2 , 1);
	ezsurf(expr ,  [0 Kmax 0 Lmax]);
	h = get(a , 'children');
	set(h , 'FaceAlpha' , 0.5)
	%ezsurf+++++++++++++++++++++++++++++++++
	
	%izokvants building++++++++++++++++
	izokvantCount = numel(product);

	if(izokvantCount == 1)
		product = [product, product]; 
	end

	izoHarvesting = sym('(x/(K^al))^(1/(1-al))');
	izoHarvesting = subs(izoHarvesting , {'al'} , alpha);

	izokvantsArray = [];

	for(i = 1:izokvantCount)
		izokvantsArray = [izokvantsArray , subs(izoHarvesting , {'x'} , product(i))];
		kg = 0:gridStep:Kmax;
		lg = subs(izokvantsArray(i) , {'K'}, kg);
		xg = subs(expr , {'L' , 'K'} , {lg , kg});

		subplot(1 , 2 , 1);
		hold on;
		plot3(kg , lg , xg , 'LineWidth' , d3LineWith);
		
		
		subplot(1, 2, 2);
		hold on;
		plot(kg , lg);
		tl = subs(izokvantsArray(i) ,{'K'} , Lmax/2 );
		text(kg , lg, num2str(product(i)));
	end

	xlabel('K'); ylabel('L');
	%izokvants building++++++++++++++++
	
	%izoklinals building+++++++++++++++
	izoklinalsCount = numel(matgRateSub);

	izoHarvesting = sym('gam*((1-al) / al)*K');
	izoHarvesting = subs(izoHarvesting , 'al' , alpha);

	izoklinalArray = [];

	for(i = 1:izoklinalsCount)
		izoklinalArray = [izoklinalArray , subs(izoHarvesting , {'gam'} , matgRateSub(i))];
		kg = 0:gridStep:Kmax;
		lg = subs(izoklinalArray(i) , {'K'} , kg);
		xg = subs(expr , {'L' , 'K'} , {lg , kg});

		subplot(1 , 2 ,1);
		hold on;
		plot3(kg, lg, xg ,'r' , 'LineWidth', d3LineWith);

		subplot(1 ,2 ,2)
		hold on;
		plot(kg , lg , 'r');
		text(kg , lg , num2str(matgRateSub(i)));

	end
	%izolvants building+++++++++++++++

	%intersecton points+++++++++++++++
	
	solutionsArray = [];

	for(i = 1:izoklinalsCount)
		for(j = 1:izoklinalsCount)
			solK = fzero(matlabFunction(izoklinalArray(i) - izokvantsArray(j)), Kmax);
			solL = subs(izokvantsArray(j), solK); 
			solutionsArray = [solutionsArray ; [solK , solL]];	
			
			subplot(1 , 2, 2);
			plot(solK, solL, '.m' , 'MarkerSize' , markerSize);

			subplot(1 , 2, 1);
			x = subs(expr , {'K' , 'L'} , {solK , solL});
			plot3(solK , solL , x , '.m' , 'MarkerSize', markerSize);
			text(solK , solL, x , ['(' , num2str(solK), ',' , num2str(solL) , ')']);

		end
	end
	%intersecton points+++++++++++++++
end
