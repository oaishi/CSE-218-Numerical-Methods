function y = cosine_1505052( x, n)
format long
sum=0;
axis([-6 6 -2 2]);
grid on
hold on 
for i = 0 :  n-1
    sum = sum + ((((-1)^i )*( x.^(2*i))) / factorial(2*i));
end
y = sum;