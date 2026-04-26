% In this method we want the function f(x) and the interval [a,b} to be
% defined. Also, we want the same for the accuracy l. So we give them as
% inputs in our function.

function [A, B , FinalInterval, Iterations, Calculations]= BisectionMethodUsingDerivatives(f,a,b,l)
% In the first iteration we choose the interval [a,b].In every iteration we choose
% the searching point xk. This point can be any point in the interval
% [ak,bk] but we will choose the optimal which is proved to be the median of
% the interval.
% Also, we need to compute the derivative of f in this point.


%G=diff(f,x);

% the variable k will be a counter for the iterations of the algorithm
% the value calc will be a counter for the calculations of the derivative of function f(x).

k=1;
calc=0;

a(k)=a;
b(k)=b;
x=zeros;
G=zeros;

while((b(k)-a(k))>l)
    x(k)=(a(k)+b(k))/2;
    % We need the value of derivative of function f at the point x(k).
    G(k)=DerivativeAtSpecificPoint(f,x(k));


    if(G(k)==0)
        % We have definetely found the point that minimize the fuction f
        % (as f is a quasi-convex function)
        % In order to declare the above we are going to set a(k)=b(k)=xk.
        disp("You have exactly found the point that minimize the function f and this is th x*=")
        dips(x(k))
        a(k+1)=x(k);
        b(k+1)=x(k);
            
    elseif(G(k)>0)
        % This means that for x>xk the values of function f will increase, 
        % as f is a quasi-convex function. So we choose the new searhing interval
        % as [a(k),xk)
        a(k+1)=a(k);
        b(k+1)=x(k);
    
    else
        % This means that G(xk)<0 and for x>xk the values of function f will
        % decrease,as f is a quasi-convex function. So we choose the new searhing interval
        % as (xk,b(k)].
        a(k+1)=x(k);
        b(k+1)=b(k);
    
    end

k=k+1;
calc=calc+1;

end

% I save the subintervals on each iteration in two vectors a and b and I
% give them back as an output.
A=a;
B=b;
FinalInterval=[a(k) b(k)];

Iterations=k;
Calculations=calc;

end