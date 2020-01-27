function polt(p,q,r,xi,xy)
format long; 
title('SPLINE INTERPOLATION');
hold on;
grid on;
x = xi:0.1:xy ;
smp = sp_plot(p,q,r,xi,x);
plot(x, smp, 'o'); 
