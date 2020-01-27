function rel = secant_method_1505052(f , x0 , xl ,iteration ,es )
x2old = 0;
for iter = 1: iteration
fx0= f(x0);
fxl= f(xl);
x2 = x0 - (fx0*(xl-x0))/(fxl-fx0);
rel =x2;
fx2= f(x2);
if fxl*fx2 <0
     x0=x2;
else if fxl*fx2>0
     xl=x2;
    end
end
if (x2~=0)
ea = abs((x2-x2old)/x2old) * 100;
%disp(ea)
end
if ea<es
    break;
end
x2old=x2;
end
disp(iter);
end
%f= @(x) ((x/(1-x)*sqrt((2*p)/(2+x)))-k);
% k=0.05
% p=3
%secant_method_1505052(f, 0 , 0.5 , 100 ,0.5)