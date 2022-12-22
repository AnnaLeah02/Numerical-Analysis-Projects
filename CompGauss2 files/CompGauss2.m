function [answ] = CompGauss2(fun,a,b,m)
%   outputs an approximate value for the integral over [a, b] using
%   composite two-point Gauss quadrature with equally sized subintervals.
x = linspace(a,b,m+1);
answ = 0;
for i = 1:m
    c = 0.5 * (x(i+1) - x(i));
    d = 0.5 * (x(i+1) + x(i));
    answ = answ+c*(fun((c*(-1/sqrt(3))+d))+fun((c*(1/sqrt(3))+d)));
end
end