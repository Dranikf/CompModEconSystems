
Y = -1;
X = 1:20;

for(x = X)
    
    y = -Y(numel(Y)) +5;
    Y = [Y , y];
    
end

Y(21) = [];
plot(X , Y);
