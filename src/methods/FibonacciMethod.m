% In this method we want the function f(x) and the interval [a,b} to be
% defined. Also, we want the same for the accuracy l. So we give them as
% inputs in our function.
% Also,at first we need to calculate the nth term of fibonecci serie where n is
% the number of iterations the algorithm will need to execute in order to
% fullfill the condition of accuracy. We will find the n by solving:
% (b-a)< (Fn)*l .


function [A, B , FinalInterval, Iterations, Calculations] = FibonacciMethod(f,a,b,l)
% This method has predetermined iterations and at first we will find that number of iterations
% Then we will need to compute the Fibonacci serie until the (n+1)th term.
% We will need n+1 instead of n because in matlab we can't define Fib(0); It
% is a fact that in this method we will use n+1 terms of Fibonacci Serie as
% we define the searching points x1(k), x2(k).
% Finally, n will be the number of iterations of the algorithm.

s= (b-a)/l;
% We need to find the (n+1)th term F(n+1) of Fibonacci serie that satisfies the
% condition F(n>+1)s.
% We compute the Fibonacci serie until the desired term.

Fib(1)=1;
Fib(2)=1;
n=1;

while(Fib(n+1)<=s)
    Fib(n+2)=Fib(n+1)+Fib(n);
    n=n+1;
end
% Now we have the number of iterations which is the value of n.


% the variable k will be a counter for the iterations of the algorithm
% the value calc will be a counter for the calculations of function f(x).
% Also, we set the constant e which is used in the last iteration of the
% algorithm. We set the e small enough.
e=0.001;

k=1;
calc=0;

a(k)=a;
b(k)=b;

% In every iteration we choose the searching points x1(k) and x2(k). We
% start as below.

x1(k)= a(k) + (Fib(n-k)/Fib(n-k+2))*(b(k)-a(k));
x2(k)= a(k) + (Fib(n+1-k)/Fib(n-k+2))*(b(k)-a(k));

% Instead ofQ x1(k)= a(k) + (Fib(n-k-1)/Fib(n-k+1))*(b(k)-a(k)) and
% x2(k)= a(k) + (Fib(n-k)/Fib(n-k+1))*(b(k)-a(k)). I made that change
% because my Fibonacci serie doesn't have Fib(0) and it starts from Fib(1).


for k=1:n-1
    % If k=n-1 it will be x1(k)=x2(k) as we can see because Fib(1)=Fib(2),
    % so we immediately choose x1(n)=x1(n-1) and x2(n)=x2(n-1)+e where e is
    % small enough as we set it at the begining. There is no meed to check
    % if f(x1(k))>f(x2(k)) because they are equal. We move on next
    % condition f(x1(n))>f(x2(n)).
    
    if(k==n-1)
        x1(n)=x1(k);
        x2(n)=x2(k)+e;

        if(f(x1(n))>f(x2(n)))
            a(n)=x1(n);
            b(n)=b(n-1);
        else
            a(n)=a(n-1);
            b(n)=x2(n-1);
        end
    
    else
        
        if(f(x1(k))>f(x2(k)))
        %The new interval will be the (x1k,bk] and we also choose the next
        %searching points as x1(k+1)=x2(k) and x2(k+1)= a(k+1) + (Fib(n-k)/Fib(n-k+1))*(b(k+1)-a(k+1))
        
        a(k+1)=x1(k);
        b(k+1)=b(k);
        x1(k+1)=x2(k);
        x2(k+1)= a(k+1) + (Fib(n-k)/Fib(n-k+1))*(b(k+1)-a(k+1));

        else
        %The new interval will be the [ak,x2k] and we also choose the next
        %searching points as x2(k+1)=x1(k) and x1(k+1)= a(k+1) + (Fib(n-k-1)/Fib(n-k+1))*(b(k+1)-a(k+1)).
        
        a(k+1)=a(k);
        b(k+1)=x2(k);
        x2(k+1)=x1(k);
        x1(k+1)= a(k+1) + (Fib(n-k-1)/Fib(n-k+1))*(b(k+1)-a(k+1));
    
        end
    
    end

    % We inform thw counter of iterations of alorithm (this is already informed by for loop) and the counter of
    % calculations of function f.in this method we already know one of
    % the values f(x1(k+1)) or f(x2(k+1)) because in every iteration we set the new searching points as x1(k+1)=x2(k) or x2(k+1)=x1(k).
    % That's why the counter of calculations increases by one on each
    % iteration. However, if k=1 we need two calculation because this is
    % the first iteration.

    if(k==1)
        calc=1;
    end

    calc=calc+1;

end

% We increase the value of k by one because we have computed n intervals in
% total
k=k+1;

% I save the subintervals on each iteration in two vectors a and b and I
% give them back as an output.
A=a;
B=b;
FinalInterval=[a(k) b(k)];

Iterations=k;
Calculations=calc;


end