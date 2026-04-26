% This function makes the figure of the Calculations of a function f(x) as a
% function of variable e. We give the starting point of e (this is the E) as an input of the
% function and the function makes the figure until e reaches 23*(initial e).
% The final search scope is a constant.


function eIsVariableBisectionMethodCalculations(f,a,b,E,l)
e=E;
BM=@BisectionMethod;

figure;
while(e<=23*E)
[~, ~, ~, ~, Calculations]= BM(f, a, b, e, l);

plot(e, Calculations,'r.-', 'MarkerSize',10 )
hold on

e=e+0.00002;
end

xlabel('e', 'FontSize',15);
ylabel('Number Of Calculations', 'FontSize',15);
hold off

end