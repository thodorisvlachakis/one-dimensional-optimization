function lIsVariableBisectionMethodUsingDerivativesIntervalsGraph(f,a,b,L)
l=L;
    BMUD=@BisectionMethodUsingDerivatives;

    n1=1;
    n2=0;

    figure;
    while(l<=256*L)
        [A, B, ~, Iterations, ~] = BMUD(f,a,b,l);
        
        n=[rand() rand() rand()];
        p=sprintf('l=%.10f',l);

        k=1:Iterations;
        scatter(k,A,40, n,"filled",'DisplayName',p);
        hold on
        scatter(k,B,40,n ,"filled");
        
        % n2 is the number of items in legend of the scatter at the end of
        % each iteration. I increase it by two. I will remove an item so I
        % will decrease it at the end of the loop.
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