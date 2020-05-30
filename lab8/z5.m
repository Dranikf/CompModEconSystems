add = 0*12;
sum = 40;
i = 0;
while(true)
    
    i = i + 1;
    sum = sum + add;
    sum = sum + (sum * 0.1);
    
    if(sum > 80)
        break;
    end
    
end

i