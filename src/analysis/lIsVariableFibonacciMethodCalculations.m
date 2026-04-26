function lIsVariableFibonacciMethodCalculations(f,a,b,L)
l=L;
FibM=@FibonacciMethod;

figure;
while(l<=(1.6/0.003)*L)
[~, ~, ~, ~, Calculations]= FibM(f, a, b, l);

plot(l, Calculations,'r.-', 'MarkerSize',10 )
hold on

l=l+0.01;
end

xlabel('l', 'FontSize',15);
ylabel('Number Of Calculations', 'FontSize',15);

end