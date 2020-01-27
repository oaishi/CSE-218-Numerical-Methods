function [fx,xopt] = golden_selection_1505052(f,a,b,eps)
%  f= @(x) (x - exp(x));
c = (-1+sqrt(5))/2;
d= c*(b-a); %me
x2= b - d;
x1 = a + d;
%x1 = c*a + (1-c)*b;
fx1 = f(x1);
%x2 = (1-c)*a + c*b;
fx2 = f(x2);
if fx1 > fx2
       xopt=x1;
       fx=fx1;
else
       xopt=x2;
       fx=fx2;
end
i=2;
while(1)
   if fx1 < fx2
      b = x1;
      x1 = x2;
      d= c*(b-a); %me
      fx1 = fx2;
      x2 = b-d;
      fx2 = f(x2);
   else
      a = x2;
      x2 = x1;
      fx2 = fx1;
      d= c*(b-a); 
      x1 = a+d;
      fx1 = f(x1);
   end;
   if fx1 > fx2
       xopt=x1;
       fx=fx1;
   else
       xopt=x2;
       fx=fx2;
   end
   if (abs(b-a) < eps)
      fprintf('succeeded after %d steps\n', i);
      break;
   end;
   i=i+1;
end;
end