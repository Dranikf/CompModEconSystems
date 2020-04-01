disp('Patr a)')
M = rand(4);
[V , D] = eig(M)

disp('A*U');
M*V
disp('U*R')
V*D

disp('Part b)')
C = [6 7 9 0; 8 6 4 6; 9 8 4 6; 8 6 3 9 ];

if(det(C) ~= 0)
    
    A  = [4 5 6 7 ; 0 9 5 8; 6 8 4 3; 9 7 4 6];
    B = inv(C) * A * C;
    
    disp('eig for A')
    eig(A)
    disp('eig for B')
    eig(B)
   
else
    disp('ooops determinant is 0')
end
    