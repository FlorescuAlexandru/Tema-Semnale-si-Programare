F = 50; %initializarea frecventei F=50Hz
t = 0:0.001:0.2; %declararea lui t
t1=0:0.01:0.2; %modificarea pasului lui t la 0.01,conteaza la "finetea" reprezentarii grafice
t2=0:0.0002:0.2; %modificarea pasului lui t la 0.0002,conteaza la "finetea" reprezentarii grafice, pasul fiind mai mic,deci semnalul e mai fin 
s = 2*sin(2*pi*F*t); %declararea semnalului sinusoidal s
s1= 2*sin(2*pi*F*t1); %declararea semnalului sinusoidal s1
s2= 2*sin(2*pi*F*t2); %declararea semnalului sinusoidal s2
F1 = 20; %initializarea frecventei F=50Hz
tc = 0:0.001:0.2; %declararea lui tc, pentru cosinus
c = 2*cos(2*pi*F1*tc); %declararea semnalului sinusoidal c
subplot(3,1,1) %impartirea graficului mare
plot(t,s,tc,c,'r'),xlabel('Timp [s]'),grid,title('Afisarea semnalului s si c pe acelasi grafic')
subplot(3,1,2) %impartirea graficului mare
plot(t1,s1,'.-'),xlabel('Timp [s]'),grid ,title('Afisarea semnalului s1 cu t1=0.01')
subplot(3,1,3) %impartirea graficului mare
plot(t2,s2,'.-'),xlabel('Timp [s]'),grid ,title('Afisarea semnalului s1 cu t2=0.0002')
