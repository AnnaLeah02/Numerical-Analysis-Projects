function [errh,ys] = Euler_wErr(f,t0,T,y0,h,y)
%   Outputs both the numerical solution ys (vector) 
%   and the maximum absolute error errh
n = (T-t0)/h;
t = (t0:h:T);
ys = zeros(n+1,1);
ys(1) = y0; % Initial condition
abserr = zeros(n+1,1);
abserr(1) = 0; % Result of initial condition in line 7
for i = 1:n
    ys(i+1) = ys(i) + h*f(t(i),ys(i));
    abserr(i+1) = abs(y(t(i+1))-ys(i+1));
end
errh = max(abserr);
end