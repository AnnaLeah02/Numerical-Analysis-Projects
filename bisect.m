function c = bisect(a,b,f,TOL)
%Bisection Algorithm
%   returns c, an approximation of the root of f 
    c = (b+a)/2;
    while (b-a)/2 > TOL && abs(f(c)) >= eps
        if f(a)*f(b) >= 0
            error("f(a)f(b) should be < 0")
        end
        c = (b+a)/2; % find midpoint
        if f(c) == 0
            break
        end
        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
    end 
end