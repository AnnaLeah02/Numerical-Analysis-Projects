function [a,b] = Numer_Deriv(f,h,x)
%Approximates derivative of f at given x with step size h
%   a uses the central difference formula
%   b uses Richardson extrapolation
    a = phi(f,x,h)
    b = L(f,x,h)
end

function [phi_out] = phi(f,x,h)
    phi_out = (f(x+h)-f(x-h))./(2*h);
end

function [L_out] = L(f,x,h)
    L_out = ((4*phi(f,x,h/2))-(phi(f,x,h)))/3;
end