function y =  Newtint_1505052(x, y , n , ea)
[m,n]=size(x); % m =1
n=m;
result = zeros(1,n-1);
for i=n : -1 : 2
    for j = 1 : i-1
        y(j) = (y(j+1)-y(j))/(x(n-i+1+j)-x(j));
    end
    result(n-i+1) = y(1); 
end
f= zeros(1,n);
sum = ones(1,n);
for q= 2 : n %koita term nibo
    for pos = 1:n
    f(pos) = f(pos) + result(q-1)*(sum(pos)*(x(pos)-x(q-1)));
    r = sum(pos) *(x(pos)-x(q-1)) ;
    sum(pos) = r;
    scatter(x,f);         
    hold on;
    plot(x,f);
    hold off;
    pause(1);
    disp(result)
    end
end
end