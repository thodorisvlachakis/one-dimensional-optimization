function lIsVariableBisectionMethodUsingDerivativesCalculations(f,a,b,L)
l=L;
BMUD=@BisectionMethodUsingDerivatives;
while(l<=(1.6/0.003)*L)
[~, ~, ~, ~, Calculations]= BMUD(f, a, b, l);

figure;
plot(l, Calculations,'r.-', 'MarkerSize',10 )
hold on

l=l+0.01;
end

xlabel('l', 'FontSize',15);
ylabel('Number Of Calculations', 'FontSize',15);

end