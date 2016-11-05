    Fs = 12000;
    N = 0.5*12; %Numar de  esantioane 0.5 ms * 12kHz
    n = 1:N;
    for i = 1:1:N
        v(i) = round(rand); %Generez vectorul v,vector cu valori binare (0 si 1)
    end
    ts = 1/Fs; %ts e timpul de esantionare
    t = ts:ts:N*ts; 
   % plot(t,v);
  
    stem(n,v),grid %semnalul generat discret in functie de n
