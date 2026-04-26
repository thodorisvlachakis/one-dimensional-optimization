% This function makes the plot of a function for some interval of x

function PlotOfAFunction(f,a,b)
c=(b-a)/100;

x=a:c:b;
figure;
plot(x,f(x),'LineStyle','-' ,'LineWidth', 2.5)
xlabel('x','FontSize',15)
end