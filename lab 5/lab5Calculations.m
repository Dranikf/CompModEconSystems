function lab5Calculations(Hz , Hs , Hbl , Hbm , K)
    s = size(Hz); s = s(1);
    E = eye(s);
    
    
    disp('product Data');
    U = inv(E - Hz)*K'
    
    disp('expenses of materials, raw materials')
    R = Hs * U
    
    disp('expenses of machines');
    mU = Hbm*U
    
    disp('expences of Labour');
    L = Hbl*U
    
end
