function c = secant(a,b,f,fTOL,xTOL,M)
%Secant method Algorithm
%   returns c, an approximation of the root of f
 m = 0;
 while m < M
     c = b - f(b) * (b-a)/(f(b)-f(a));
     if abs(f(c)) < fTOL || abs(c-b) < xTOL
         break
     else
         a = b;
         b = c;
         m = m+1;
     end
 end