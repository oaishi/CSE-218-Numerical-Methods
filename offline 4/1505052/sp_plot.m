function fx = sp_plot(p,q,r,xi,x)
f= @(x)(p+q*(x-xi)+r*(x.*x - 2*(x*xi) + xi.*xi));
%f= @(x)(p+q+r+x+xi);
fx = f(x);
end
