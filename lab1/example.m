[X , Y] = meshgrid(-3:0.1:3 , -3:0.1:3);
subplot(2 , 2 , 1);
contour(X, Y , X.^4 + Y.^4);

subplot(2 , 2 , 2);
contour(X, Y , X.^4 + Y.^4);
%axis square

subplot(2 ,2 , 3);
contour(X , Y , X.^4 + Y.^4 , [1 2 4]);

subplot(2 ,2 , 4);
meshc(X , Y , X.^4 + Y.^4) ;
