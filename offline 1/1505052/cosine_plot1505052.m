format long; 
axis([-6 6 -2 2]);
x = -2*pi : .2 : 2*pi;
y = cos(x); 
% Plot the goal
plot(x, y, 'g' , 'Linewidth', 5) ;
title('Cos(x) Function Using Taylor Series');
xlabel('x');
ylabel('cos(x) with different number of terms') 

smp = cosine_1505052( x, 1);
plot(x, smp, 'm+-'); 

smp = cosine_1505052( x, 3);
plot(x, smp, 'ro-'); 

smp =cosine_1505052(x, 5);
plot(x, smp, 'b-.') ;

smp = cosine_1505052( x, 20);
plot(x, smp, 'k') ;legend('cos(x)','1-term series', '3-term series', ...
       '5 terms', '20 terms');