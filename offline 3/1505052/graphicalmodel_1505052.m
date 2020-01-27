function max = graphicalmodel_1505052
x=-1:0.1:5;
axis([1 2.5 02 7.5]);
f= @(p,q)(1.75*p+1.25*q);
y = (14 - 1.2*x)/2.25;
z = (8 - x)/1.1;
w = (9 - 2.5*x);
a= [1.2 , 2.25; 2.5,1];
b= [14;9];
m=ludecom_1505052(a,b);
disp(m)
grid on
hold on
plot(x,y,'k');
plot(x,z,'m+-');
plot(x,w, 'g-.'); 
legend('First constraint','Second constraint', 'Third constraint');
xlabel('Value of X');
ylabel('Value of Y');
title('Graphical Method To solve LPP');
c= [ 1.2 , 2.25; 1,0]; % x=0
d=[14;0];
mim=ludecom_1505052(c,d);
disp(mim);
e=[2.5,1;0,1];% y=0
g=[9;0];
mm=ludecom_1505052(e,g);
disp(mm);
%x3 = num2str(m(1));
%y3 = num2str(m(2));
%txt3 = '('+x3+y3+')';
%text(m(1),m(2),txt3,'HorizontalAlignment','right')
max = f(m(1),m(2));
p=[0 mm(1) m(1) mim(1) 0 ];
q=[0 mm(2) m(2) mim(2) 0 ];
fill(p,q,'y');
plot(m(1),m(2),'ro', 'Linewidth', 2);
end