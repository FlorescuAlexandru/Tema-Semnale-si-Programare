%Tema ex. 5

t1=0:0.2:10;                   %se parcurge t1 de la 0 la 10 cu rezolutia 0.2
x1=abs(1.5*sin(2*pi*0.25*t1)); %initializam semnalul x1 folosind functia abs ce reprezinta modulul
subplot(3,1,1) %se imparte graficul mare in subgrafice
plot(t1,x1),grid,xlabel('Timp(s)'),ylabel('Amplitudine'),title('Semnal cu rezolutia de 0.2') %se afiseaza semnalul x1 folosind plot

t2=0:0.02:10;                   %se parcurge t1 de la 0 la 10 cu rezolutia 0.02
x2=abs(1.5*sin(2*pi*0.25*t2)); %initializam semnalul x2 folosind functia abs ce reprezinta modulul
subplot(3,1,2) %se imparte graficul mare in subgrafice
plot(t2,x2),grid,xlabel('Timp(s)'),ylabel('Amplitudine'),title('Semnal cu rezolutia de 0.02') %se afiseaza semnalul x2 folosind plot

t3=0:0.002:10;                  %%se parcurge t1 de la 0 la 10 cu rezolutia 0.002
x3=abs(1.5*sin(2*pi*0.25*t3)); %initializam semnalul x3 folosind functia abs ce reprezinta modulul
subplot(3,1,3) %se imparte graficul mare in subgrafice
plot(t3,x3),grid,xlabel('Timp(s)'),ylabel('Amplitudine'),title('Semnal cu rezolutia de 0.002') %se afiseaza semnalul x3 folosind plot



    