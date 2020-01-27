f = @(x)(x*exp(x));
xi=0;
xf=3;
true = 41.17107385;
es=100;
et = 1;
points = zeros(1,1);
values = zeros(1,1);
m=1;
pow=0;
while(1)
    % m+1 points extraction
    for n= 1: (2^pow)+1
        points(n) = xi + (xf-xi)*((n-1)/(2^pow));
    end
   % disp(points);
sum = f(xi)+f(xf);
if pow>0
for n = 2: (2^pow)
sum = sum + 2*f(points(n));
end
end
    values(m,1) = sum * (xf-xi)/(2*(2^pow));
    %1st column value extraction
j=m;
k=1;
%further column extraction
while(j>1)
   values(j-1,k+1) = (((4^k)*values(j,k))-values(j-1,k))/((4^k) -1);
   es = (abs(true- values(j-1,k+1))/true)*100;
    %es = abs(true- values(j-1,k+1));
   if(es<=et)
     disp(es);
     disp(values(j-1,k+1));
     break;
   end
   k=k+1;
   j=j-1;
end
%disp(values);
if(es<=et)
      break;
end
m = m+1;
pow = pow+1;
end
disp(values);