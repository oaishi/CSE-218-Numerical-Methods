format long;
m=1:50;
solold = 1;
ea(1) = NaN;
for i=2:50
sol = cosine (1.5 , i);
ea(i) = abs((sol-solold)/sol) * 100;
solold = sol;
end;
plot(m,ea);
axis([0 50 -25 950]);
xlabel('Number of Terms');
ylabel('Relative Approximate Error ' );