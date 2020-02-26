[x , y] = meshgrid(-5:0.1:5 , -6:0.1:6)
%z = x.^2 + y.^2
%contour(x , y ,z, 'ShowText' , 'On')
z = 3*x+y.^3 + x.^3 - 4;
%meshc(x, y , z)
%plot3(x , y , z);

A = magic(5);

[U , R] = eig(A)

A * U(:, 1)
U(:, 1) * R(1 , 1)

x = 0;
for i = 1:100
	x = x + i;
end

x

x = 0;
i = 0;
while(x <= 100)
	x = x + 1;
	i = i + 1;
end

x

x = -10;
sum_abs = 0;

while x <= 5
	if(x < 0)
		sum_abs = sum_abs - x;
	else
		sum_abs = sum_abs + x;
	end
	x = x + 1;
end

sum_abs
