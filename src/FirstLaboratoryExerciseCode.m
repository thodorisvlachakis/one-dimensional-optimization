% First Laboratory Exercise

addpath(genpath(pwd));

% These are the functions I have to minimize using the 4 methods I
% implemented

f1x =@(x) (x-1).^3 + ((x-4).^4 ).*cos(x);
f2x =@(x) exp(-2*x) + (x-2).^2;
f3x =@(x) (x.^2).*log(0.5*x) + sin((0.2*x).^2);

% Furthermore, the interval where I am going to run the algorithms is
% defined and this is the interval [a,b]=[0,3]
a=0;
b=3;

% I am going to plot the figure of each function in the interval [a,b] in order to realize that they are quasi-convex functions. 
% For f1(x)
PlotOfAFunction(f1x,a,b);
ylabel('f1(x)','FontSize',15);
title('Figure of f1(x)', 'FontSize',15);

% For f2(x)
PlotOfAFunction(f2x,a,b);
ylabel('f2(x)','FontSize',15);
title('Figure of f2(x)', 'FontSize',15);

% For f3(x)
PlotOfAFunction(f3x,a,b);
ylabel('f3(x)','FontSize',15);
title('Figure of f3(x)', 'FontSize',15);

% Start of first exercise:

% 1. Bisection Method

% For constant final search scope l=0.01 and variable e>0 , I am going to plot 
% the number of calculations of fx (for each f) as a function of e. For
% l=0.01 e has to be smaller than 0.005

% For f1(x)

l=0.01;

e=0.0002;

eIsVariableBisectionMethodCalculations(f1x,a,b,e,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)

eIsVariableBisectionMethodCalculations(f2x,a,b,e,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)

eIsVariableBisectionMethodCalculations(f3x,a,b,e,l)
title('Figure for f3(x)', 'FontSize',15);

% Now, for constant e=0.001 and variable l>0 , I am going to plot 
% the number of calculations of fx (for each f) as a function of l. For
% e=0.001 l has to be greater than 0.002

% For f1(x)
e=0.001;

l=0.003;

lIsVariableBisectionMethodCalculations(f1x,a,b,e,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)
lIsVariableBisectionMethodCalculations(f2x,a,b,e,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)
lIsVariableBisectionMethodCalculations(f3x,a,b,e,l)
title('Figure for f3(x)', 'FontSize',15);

% Now, I am going to make the figure of (ak,bk), which are the intervals in
% every iteration of the algorithm, as a function of k, which is the index of moving while the algorithm is executing.
% The final search scope l will be a variable. I will execute the algorithm
% for l=0.005859375 to l=1.5 in order to get results for small values of l and
% bigger values of l. THey are just typical values I choose without
% specific reason. 
% Of course I need a value for e to run the algorithm so I will keep it to
% e=0.001

% For f1(x)
e=0.001;

l=0.005859375;

lIsVariableBisectionMethodIntervalsGraph(f1x,a,b,e,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)

lIsVariableBisectionMethodIntervalsGraph(f2x,a,b,e,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)

lIsVariableBisectionMethodIntervalsGraph(f3x,a,b,e,l)
title('Figure for f3(x)', 'FontSize',15);

% end of BisectionMethod

% 2.GoldenSectionMethod

% For l to be a variable l>0 , I am going to plot 
% the number of calculations of fx (for each f) as a function of l.

% For f1(x)

l=0.003;

lIsVariableGoldenSectionMethodCalculations(f1x,a,b,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)
lIsVariableGoldenSectionMethodCalculations(f2x,a,b,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)
lIsVariableGoldenSectionMethodCalculations(f3x,a,b,l)
title('Figure for f3(x)', 'FontSize',15);

% Now, I am going to make the figure of (ak,bk), which are the intervals in
% every iteration of the algorithm, as a function of k, which is the index of moving while the algorithm is executing.
% The final search scope l will be a variable. I will execute the algorithm
% for l=0.005859375 to l=1.5 in order to get results for small values of l and
% bigger values of l. THey are just typical values I choose without
% specific reason. 


% For f1(x)


l=0.005859375;

lIsVariableGoldenSectionMethodIntervalsGraph(f1x,a,b,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)

lIsVariableGoldenSectionMethodIntervalsGraph(f2x,a,b,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)

lIsVariableGoldenSectionMethodIntervalsGraph(f3x,a,b,l)
title('Figure for f3(x)', 'FontSize',15);

% end of GodenSectionMethod

% 3.FibonacciMethod

% For l to be a variable l>0 , I am going to plot 
% the number of calculations of fx (for each f) as a function of l.

% For f1(x)

l=0.003;

lIsVariableFibonacciMethodCalculations(f1x,a,b,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)
lIsVariableFibonacciMethodCalculations(f2x,a,b,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)
lIsVariableFibonacciMethodCalculations(f3x,a,b,l)
title('Figure for f3(x)', 'FontSize',15);

% Now, I am going to make the figure of (ak,bk), which are the intervals in
% every iteration of the algorithm, as a function of k, which is the index of moving while the algorithm is executing.
% The final search scope l will be a variable. I will execute the algorithm
% for l=0.005859375 to l=1.5 in order to get results for small values of l and
% bigger values of l. THey are just typical values I choose without
% specific reason. 


% For f1(x)


l=0.005859375;

lIsVariableFibonacciMethodIntervalsGraph(f1x,a,b,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)

lIsVariableFibonacciMethodIntervalsGraph(f2x,a,b,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)

lIsVariableFibonacciMethodIntervalsGraph(f3x,a,b,l)
title('Figure for f3(x)', 'FontSize',15);

% end of FibonacciMethod

% 4.BisectioMethodUsingDerivatives

% For l to be a variable l>0 , I am going to plot 
% the number of calculations of fx (for each f) as a function of l.

% For f1(x)

l=0.003;

lIsVariableBisectionMethodUsingDerivativesCalculations(f1x,a,b,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)
lIsVariableBisectionMethodUsingDerivativesCalculations(f2x,a,b,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)
lIsVariableBisectionMethodUsingDerivativesCalculations(f3x,a,b,l)
title('Figure for f3(x)', 'FontSize',15);

% Now, I am going to make the figure of (ak,bk), which are the intervals in
% every iteration of the algorithm, as a function of k, which is the index of moving while the algorithm is executing.
% The final search scope l will be a variable. I will execute the algorithm
% for l=0.005859375 to l=1.5 in order to get results for small values of l and
% bigger values of l. THey are just typical values I choose without
% specific reason. 


% For f1(x)


l=0.005859375;

lIsVariableBisectionMethodUsingDerivativesIntervalsGraph(f1x,a,b,l)
title('Figure for f1(x)', 'FontSize',15);

% For f2(x)

lIsVariableBisectionMethodUsingDerivativesIntervalsGraph(f2x,a,b,l)
title('Figure for f2(x)', 'FontSize',15);

% For f3(x)

lIsVariableBisectionMethodUsingDerivativesIntervalsGraph(f3x,a,b,l)
title('Figure for f3(x)', 'FontSize',15);

% end of BisectioMethodUsingDerivatives

% example at the end of the pdf
% f1x =@(x) (x-1).^3 + ((x-4).^4 ).*cos(x);
% a=0;
% b=3;
% e=0.001;
% l=0.005;
% [ABM, BBM, FinalIntervalBM, IterationsBM, CalculationsBM] = BisectionMethod(f1x,a,b,e,l);
% [AGSM, BGSM , FinalIntervalGSM, IterationsGSM, CalculationsGSM]= GoldenSectionMethod(f1x,a,b,l);
% [ABMUD, BBMUD , FinalIntervalBMUD, IterationsBMUD, CalculationsBMUD]= BisectionMethodUsingDerivatives(f1x,a,b,l);
% [AFibM, BFibM , FinalIntervalFibM, IterationsFibM, CalculationsFibM] = FibonacciMethod(f1x,a,b,l);

% y=" For a=0 ,b=3, l=0.005 and e=0.001 we have the following results:";
% disp(y);
% for i=1:4
% d=newline;
% disp(d);
% if(i==1)
 %    r=sprintf('Bisection Method: IterationsBM =%d , CalculationsBM= %d , FinalIntervalBM= [%.10f , %.10f] \n', IterationsBM, CalculationsBM, FinalIntervalBM(1), FinalIntervalBM(2) );
  %   disp(r);
% elseif(i==2)
 %    r=sprintf('Golden Section Method: IterationsGSM =%d , CalculationsGSM= %d , FinalIntervalGSM= [%.10f , %.10f] \n', IterationsGSM, CalculationsGSM, FinalIntervalGSM(1), FinalIntervalBM(2) );
  %   disp(r);


% elseif(i==3)
 %    r=sprintf('Fibonacci Method: IterationsFibM =%d , CalculationsFibM= %d , FinalIntervalFibM= [%.10f , %.10f] \n', IterationsFibM, CalculationsFibM, FinalIntervalFibM(1), FinalIntervalFibM(2) );
  %   disp(r);

% else
 %    r=sprintf('Bisection Method Using Derivatives: IterationsBMUD =%d , CalculationsBMUD= %d , FinalIntervalBMUD= [%.10f , %.10f] \n', IterationsBMUD, CalculationsBMUD, FinalIntervalBMUD(1), FinalIntervalBMUD(2) );
  %   disp(r);

% end

% end
