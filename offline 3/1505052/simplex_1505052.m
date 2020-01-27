%ini = [ 1.2,2.25,1,0,0,0,0,0,14;1,1.1,0,1,0,0,0,0,8;2.5,1,0,0,1,0,0,0,9;1,0,0,0,0,1,0,0,0;0,1,0,0,0,0,1,0,0;-1.75,-1.25,0,0,0,0,0,1,0]
function max =simplex_1505052(ini)
[m,n]=size(ini);
while(1)
min = ini(m,1);
column = 1;
row =1;
for j=2:n
    if ini(m,j)<min
        min = ini(m,j);
        column = j;
    end
end
if min>=0
    break
end
if ini(1,column)~=0 && ini(1,n)~=0
min = ini(1,column)\ini(1,n);
else
    min = 10000000000;
end
for j=2:m-1
    if ini(j,column)~=0 && ini(j,n)~=0
    mm=ini(j,column)\ini(j,n);
    if mm<min
        min = mm;
        row =j;
    end
    end
end
pivot = ini(row,column);
ini(row,:)= ini(row,:)/pivot;
for j=1:m
    if ini(j,column)~=0 && j~=row
        mm= ini(j,column);
     ini(j,:) = ini(j,:) - mm*ini(row,:);
    end
end
disp(ini)
end
max = ini(m,n);
end
