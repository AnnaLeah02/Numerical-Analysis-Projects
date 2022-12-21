function [y_eval] = evaluate_Newton(x,y,x_eval)
%   Inupts data points x,y and x−values on which we want to evaluate
%   the Newton polynomial p. Outputs the evaluations.
d = Newton_table(x,y);
m = numel(x);
n = numel(x_eval);
w = zeros(m,n);
for k = 1:n
    a = 1;
    for j = 1:m
        w(j,k) = a;
        a = a * (x_eval(k) - x(j));
    end
end
y_eval = d*w;
end