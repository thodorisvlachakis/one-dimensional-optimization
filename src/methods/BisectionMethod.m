% In this method we want the function f(x) and the intrval [a,b} to be
% defined. Also, we want the same for the accuracy l and the distance e from the
% median of the interval. So we give them as inputs in our function.

function [A, B, FinalInterval, Iterations, Calculations] = BisectionMethod(f,a,b,e,l)
% In the first iteration we choose the interval [a,b] and the optimal values
% x1=((a+b)/2)-e and x2=((a+b)/2)+e

% if(e<=0 || l<0)
 %   disp("Something is going wrong with the requirments")
  %  return
% end

if(e>l/2)
    disp("You must choose a smaller distanse ε from the median.")
    return
end 

% the variable k will be a counter for the iterations of the algorithm
% the value calc will be a counter for the calculations of function f(x). In
% this method,in every iteration the new value of calc is the previous plus
% 2, because we do 2 calculations of f.
k=1;
calc=0;

a(k)=a;
b(k)=b;

x1=zeros;
x2=zeros;

while((b(k)-a(k))>l)
% we choose the optimal values of points x1 and x2 on each iteration.    
    x1(k)=((a(k)+b(k))/2) -e;
    x2(k)=((a(k)+b(k))/2) +e;

    if(f(x1(k))>f(x2(k)))
        a(k+1)=x1(k);
        b(k+1)=b(k);
    else
        b(k+1)=x2(k);
        a(k+1)=a(k);
    end

k=k+1;
calc=calc +2;

end

Iterations=k;
Calculations=calc;

% I save the subintervals on each iteration in two vectors a and b and I
% give them back as an output.
% I am going to return the final interval where the minimum point will be.

A=a;
B=b;
FinalInterval=[a(k) b(k)];

end