% This function makes the figure of the Calculations of a function f(x) as a
% function of variable l. We give the starting point of l (this is the L) as an input of the
% function and the function makes the figure until l reaches (1.6/0.03)*(initial l).
% The constant e is a constant


function lIsVariableBisectionMethodCalculations(f,a,b,e,L)
l=L;
BM=@BisectionMethod;

figure;
while(l<=(1.6/0.003)*L)
[~, ~, ~, ~, Calculations]= BM(f, a, b, e, l);

plot(l, Calculations,'r.-', 'MarkerSize',10 )
hold on

l=l+0.01;
end

xlabel('l', 'FontSize',15);
ylabel('Number Of Calculations', 'FontSize',15);

end