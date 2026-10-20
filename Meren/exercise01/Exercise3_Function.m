function s = maxpath(x)
n = size(x, 1);
for i = 2:n
    x(i,1) = x(i,1) + x(i-1,1);             
    for j = 2:i-1
        x(i,j) = x(i,j) + max(x(i-1,j-1), x(i-1,j));
    end
    x(i,i) = x(i,i) + x(i-1,i-1);
end
s = max(x(n,:));
end
