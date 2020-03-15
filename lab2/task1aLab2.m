digits(15);
disp('computing with 15 digits :');
res1 = sym(exp(14) , 'd');
res2 = sym(382801 * pi, 'd');
disp(['exp(14)    ' , res1] );
disp(['382801 * pi    ' , res2]);
digits(40);
res1 = sym(exp(14) , 'd');
res2 = sym(382801 * pi, 'd');
disp('computing with 40 digits :');
disp(['exp(14)    ' , res1] );
disp(['382801 * pi    ' , res2]);

res1 = double(res1);
res2 = double(res2);

if res1 > res2
	disp('first number biger then second');
end
if res2 > res1
	disp('second number biger then first');
end

disp('sum of numbers is:');

sym(res1 + res2)

% results of sctipt
%>> task1aLab2()
%computing with 15 digits :
%[ exp(14), 1202604.28416478]
 
%[ 382801*pi, 1202604.80938683]
 
%computing with 40 digits :
%[ exp(14), 1202604.28416477679274976253509521484375]
 
%[ 382801*pi, 1202604.80938682635314762592315673828125]
 
%second number biger then first
%sum of numbers is:
 
%ans =
 
%2582573599211485/1073741824
 
