[X , Y] = meshgrid(-2:0.1:2 , -2:0.1:2);

subplot(1 , 3 , 1);
contour(X , Y , Y.*log(abs(X)) + X);

[X , Y] = meshgrid(-10:0.1:10 , -10:0.1:10);
subplot(1 , 3 ,2);
values = Y.*log(abs(X)) + X; 
contour(X , Y , values);

subplot(1 ,3 , 3);
meshc(X , Y , values);
