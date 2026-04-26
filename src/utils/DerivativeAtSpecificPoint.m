function y=DerivativeAtSpecificPoint(f,x0)
syms x;

r= eval( (subs(diff(f,x,1),x,x0)) );
y=r;

end