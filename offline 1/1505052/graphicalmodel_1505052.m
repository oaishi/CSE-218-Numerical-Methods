x=-1:0.05:1;
grid on
hold on
p=3;
k=0.05;
y = (x./(1-x).*sqrt((2*p)./(2+x)))-k;
%answer =((2-0.015)*(x.^2))+(x.^3)+(0.03*x)- 0.015;
plot(x,y);