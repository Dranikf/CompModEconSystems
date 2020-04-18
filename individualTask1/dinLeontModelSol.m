%function for getting a solution of simpliest dynamic Leont. model
% dy Fedor Kobak github.com/Dranikf

%A  - direct cost matrix
%F  - capital gains matrix
%Y0 - vector of production growth in the base year
%info - is need to show output 

function result = dinLeontModelSol(A , F , Y0, info)

	aSize = size(A);

	%step 1
	
	E = eye(aSize(1));
	i = inv(E-A);
	Fs = F*i;

	if(info)
		disp('step 1++++++++++++++++++++++++');
		
		disp('inv(E-A):');
		i

		disp('F*i');
		Fs

		disp('step 1++++++++++++++++++++++++');

	end
	

	%step 2

	syms l; % its like lambda	
	M = E - l*Fs;
	
	charEq = det(M);
	lVec = double(solve(charEq));


	if(info)

		disp('step 2+++++++++++++++++++++++++');

		disp('E - l*Fs:');
		M

		disp('characteristc equation');
		charEq 

		disp('lambdas');
		lVec

		disp('step 2+++++++++++++++++++++++++');
	end


	%step 3
	
	k = []; % colunms of this matrix will be own vectors

	if(info)
		disp('step 3+++++++++++++++++++++++++');
	end
	for i = 1:aSize(1)

		tl = lVec(i);
		sysMatr = E - tl*Fs;

		% only for 2x2 matrixes!!!
		k(2 , i) = 1;
		k(1 , i) = (-sysMatr(1 , 2) * k(2 , i)) / sysMatr(1 , 1);
		% only for 2x2 matrixes!!!

		if(info)

			disp(['for l = ', num2str(tl)  , ' system matrix is']);
			sysMatr

			disp('and own vector is');
			k(: , i)	

		end

	end
	if(info)
		disp('step 3++++++++++++++++++++++++');
	end
	
	%step 4
	
	k	
	d = inv(k)*Y0;

	if(info)

		disp('step 4++++++++++++++++++++++++++++');
		disp('d values is');

		d

		disp('step 4++++++++++++++++++++++++++++');

	end


	%step 5
	if(info)
		disp('step 5+++++++++++++++++++++++');
		disp('analitic solution is');
	end
	for i = 1:aSize(1)
		result(i) = sym('0');
		for j = 1:aSize(2)
			
			symbStr = ['exp(' , num2str(lVec(j)) , '*t)'];
			result(i) = result(i) + d(j)*k(i , j)*sym(symbStr);

		end
		if(info)
			disp(['y(' , num2str(i) , ')  = ']) ;
			result(i)
		end

	end
	if(info)
		disp('step 5+++++++++++++++++++++++');
	end


end
