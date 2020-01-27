function rel = false_position_1505052(f , xl , xu ,iteration ,es )
xrold = 0;
fxu= f(xu);
fxl= f(xl);
for iter = 1: iteration
xr = xu - (fxu*(xl-xu))/(fxl-fxu);
rel =xr;
fxr = f(xr);
if xr~=0
ea = abs((xr-xrold)/xr) * 100;
end
xrold = xr;
if fxl*fxr <0
     xu=xr;
else if fxl*fxr>0
     xl=xr;
    end
end
fxu= f(xu);
fxl= f(xl);
if ea<es
   % disp(iter);
    break;
end
end
end
%f= @(x) ((x/(1-x)*sqrt((2*p)/(2+x)))-k);
% k=0.05
% p=3
%false_position_1505052(f, 0 , 0.5 , 100 ,0.5)
