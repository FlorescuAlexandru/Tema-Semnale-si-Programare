t1=0:0.002:10;
t2=0:0.02:10;
t3=0:0.2:10;

x1=-0.5+1.5*sawtooth(2*pi*0.2*t1,0.5); %functie ce genereaza semnalul triunghiular cu functia predefinita 'sawtooth'
x2=-0.5+1.5*sawtooth(2*pi*0.2*t2,0.5); %functie ce genereaza semnalul triunghiular cu functia predefinita 'sawtooth'
x3=-0.5+1.5*sawtooth(2*pi*0.2*t3,0.5); %functie ce genereaza semnalul triunghiular cu functia predefinita 'sawtooth'

subplot(3,1,1) %imparte graficul mare in subgrafice
plot(t1,x1),grid,title('Rezolutie temporara de 0.002'),xlabel('Timp(s)'),ylabel('Amplitudine') %graficul e mai 'fin' datorita pasului mai mic,de 0.0002



subplot(3,1,2) %imparte graficul mare in subgrafice
plot(t2,x2),grid,title('Rezolutie temporara de 0.02'),xlabel('Timp(s)'),ylabel('Amplitudine')%graficul e mai 'fin' datorita pasului mai mic,de 0.02



subplot(3,1,3) %imparte graficul mare in subgrafice
plot(t3,x3),grid,title('Rezolutie temporara de 0.2'),xlabel('Timp(s)'),ylabel('Amplitudine')%graficul e mai 'fin' datorita pasului mai mic 0.2

