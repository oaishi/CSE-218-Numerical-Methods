f = @(x)(4*(x^3)-(10*x)+3);
f1 = @(x)(x.^4 - 5*(x.^2)+(3*x));
x = 0 : 0.5 : 4;
y = f1(x);
z = zeros(1,9);
fx = zeros(1,9);
axis([0 4 -10 200]);
grid on;
hold on;
plot(x,y,'ro-' ,'Linewidth', 2) ;
z(1)=-1;
for i = 1:9
    fx(i) = f(x(i));
end
%euler
for i = 2:9
    z(i) = z(i-1) + f(x(i)-0.5)*0.5;
end
plot(x,z, 'g+-');
%huen
for i = 2:9
    z(i) = z(i-1) + (fx(i)+f(x(i)-0.5))*0.25;
end
plot(x,z, 'b-.');
%midpoint
for i = 2:9
    z(i) = z(i-1) + (f(x(i-1)+0.25))*0.5;
end
plot(x,z,'m+-');
for i = 2:9
    z(i) = z(i-1) + (fx(i-1)+2*( f(x(i-1)+0.375)))*(0.5/3);
end
plot(x,z,'co-') ;
legend('Analytic' , 'Euler', 'Huen' ,.....
    'MidPoint' , 'Raltson' );