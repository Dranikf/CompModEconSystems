add = 5374;
sum = 0;
i = 0;
while(true)
    
    i = i + 1;
    sum = sum + add;
    sum = sum + (sum * 0.08);
    
    if(sum > 1000000)
        break;
    end
    
end

i