function [answ] = CompTrapezoid(fun,a,b,n)
%   outputs an approximate value for the integral over [a, b] using 
%   composite trapezoid rule with equally spaced nodes
h = (b-a)/n;
answ = 0;
for i = 1:n-1
    answ = answ + 2*fun(a+i*h);
end
answ = (h/2)*(fun(a) + answ + fun(b));
end