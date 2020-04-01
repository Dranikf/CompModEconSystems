function [mSol , sysSol] = hw1t2(m , b)
	
	b = reshape(b , numel(b) , 1);
	mSol = inv(m) * b;
	
	linSystem = linSysByMat(m , b);	
	sysSol = solve(linSystem);

end

% a
% 
% a =
% 
%      2     1     0     1
%      1    -3     2     4
%     -5     0    -1    -7
%      1    -6     2     6
% 
% b
% 
% b =
% 
%      8     9    -5     0
% 
% [mSol , sysSol] = hw1t2(a , b)
% 
% mSol =
% 
%     8.1481
%    -1.5185
%    11.7037
%    -6.7778
% 
% 
% sysSol = 
% 
%     x1: [1x1 sym]
%     x2: [1x1 sym]
%     x3: [1x1 sym]
%     x4: [1x1 sym]
%  
% disp([num2str(double(sysSol.x1)) ,num2str(double(sysSol.x2)) , num2str(double(sysSol.x3)), num2str(double(sysSol.x4))])
% 8.1481-1.518511.7037-6.7778

% a = [4 0.24 -0.08; 0.09 3 -0.15; 0.04 -0.08 4]
% 
% a =
% 
%     4.0000    0.2400   -0.0800
%     0.0900    3.0000   -0.1500
%     0.0400   -0.0800    4.0000
% 
% b = [8 9 20]
% 
% b =
% 
%      8     9    20
% 
% [mSol , sysSol] = hw1t2(a , b)
% 
% mSol =
% 
%     1.9092
%     3.1950
%     5.0448
% 
% 
% sysSol = 
% 
%     x1: [1x1 sym]
%     x2: [1x1 sym]
%     x3: [1x1 sym]
% 
% disp([num2str(double(sysSol.x1)) ,num2str(double(sysSol.x2)) , num2str(double(sysSol.x3)), num2str(double(sysSol.x4))])
% ??? Reference to non-existent field 'x4'.
%  
% disp([num2str(double(sysSol.x1)) ,num2str(double(sysSol.x2)) , num2str(double(sysSol.x3))])
% 1.90923.1955.0448



