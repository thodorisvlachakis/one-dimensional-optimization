% This function makes the figure of the intervals [ak,bk] for every k which is the index of moving while the BisectionMethod
% Algorithm is executing for a function f(x). The figure is made as a
% function of variable l. This means that the figure will have the points (k,ak) and (k,bk) for every k and for every l.
% We give the starting point of l (this is the L) as an input of the
% function and the function makes the figure until l reaches 512*(initial l).
% We double the l in every iteration.
% The constant e is a constant e=0.001


function lIsVariableBisectionMethodIntervalsGraph(f,a,b,e,L)
    l=L;
    BM=@BisectionMethod;

    n1=1;
    n2=0;

    figure;
    while(l<=256*L)
        [A, B, ~, Iterations, ~] = BM(f,a,b,e,l);
        
        n=[rand() rand() rand()];
        p=sprintf('l=%.10f',l);

        k=1:Iterations;
        scatter(k,A,40, n,"filled",'DisplayName',p);
        hold on
        scatter(k,B,40,n ,"filled");
        
        %n2 is the number of items in legend of the scatter at the end of
        %each iteration. I increase it by two. I will remove an item so I
        %will decrease it at the end of the loop.
        n2=n2+2;

        my_legend = legend();
        my_legend.String(n2)=[];

        l=l*2;
        n1=n1+1;
        n2=n2-1;        

    end

xlabel('k: index of moving', 'FontSize',15);
ylabel('(ak,bk)', 'FontSize',15);

end