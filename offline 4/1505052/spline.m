function a = spline(x,y)
[m,n] = size(x);
h=zeros(n-1,m);
e=zeros(n-1,m);
c=zeros(n-1,m);
for i=1:n-1
    h(i) = x(i+1)-x(i);
end
a=2*(n-1) -1;
p = zeros(a,a); % main matrix
f = zeros(a,m); %rs
for i=1:n-1
    f(i) = y(i+1)-y(i);
end
for i=1:n-1
    p(i,i) = h(i); %b's values
end
for i=2:n-1
    p(i,n-1+i-1) = h(i)*h(i); %c's values
end
for i=1:n-2
p(n+i-1,i)=1; %b's values
%if i~=n-2
p(n+i-1,i+1)=-1;
%end
end
for i=2:n-2
p(n+i-1,n-1+i-1) = 2*h(i);
end
disp(p)
b = p\f;
for i= 1:n-1
 e(i)=b(i);
end
for i= 2:n-1
 c(i)=b(i+n-2);
end
disp(e)
disp(c)
for i= 1:n-1
 polt(y(i),e(i),c(i),x(i),x(i+1))
end
grid on
hold on
for i= 1:n-1
 plot(x(i),y(i),'*');
end
end