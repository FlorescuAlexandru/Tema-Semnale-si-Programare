    function tema3(a)
    N = 4;
    ts = 0.001; %timp de esantionare
    t = 0:ts:N;
    
    k = 1;
    
    for i = 1:length(t) %parcurgem cu i de la 1 la lungimea lui t
     if  t(i) <= k*0.25 %se limiteaza durata fiecarui nivel la 0.25s
         if k <= length(a)  
             x1(i) = a(k); %pune pe pozitia respectiva semnalul din a
         else
             x1(i) = 0;
         end
     else
        if k <= length(a)
             x1(i) = a(k);
        end
        k = k+1; 
     end
    end
    
    axis([0 20 -5 3]) %seteaza limitele graficului
    plot(t,x1); %afiseaza graficul
   
end