a = [3701/1021 20523/4050  1024/335]

test = 6 - a(1);
resulter = 1;

for i = 2:numel(a)

	if(test > 6 - a(i))
		test = 6 - a(i);
		resulter = i;
	end

end

disp(['the closest to 6 value is ' , num2str(a(resulter))]);


%result of script
%a =

%    3.6249    5.0674    3.0567



%the closest to 6 value is 5.0674
%>>
