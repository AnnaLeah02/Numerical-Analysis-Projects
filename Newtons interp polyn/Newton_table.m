function [d] = Newton_table(x,y)
%   Implements the Newton divided difference table and output its first row
m = numel(y);
V = zeros(m,m+1);
V(:,1) = x;
V(:,2) = y;
for k = 3:m+2
    for j = 1:m-1
        if j+k-2 > m
            break
        end
        V(j,k) = (V(j+1,k-1)-V(j,k-1))/(V(j+k-2,1)-V(j,1));
    end
end
d = V(1,2:end);
end