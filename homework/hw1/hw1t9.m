result1 = dsolve('Dx = t*cos(t) + x/t' , 'x(1) = 0')

result2 = dsolve('(1 +exp(t))*x*Dx = exp(t)' , 'x(0) = 1')

fun = sym('(1 +exp(t))*x*Dx = exp(t)')
cond1 = sym('x(0) = 1')

dsolve(fun , cond1)

dsolve('D2x + 3*Dx + 2*x = 0' , 'x(0) = 1' , 'Dx(0) = -1')

dsolve('D2x*(1+log(t)) + Dx/(t^2) = 2 + log(t)' , 'x(1) = 0.5' , 'Dx(1) = 1')
