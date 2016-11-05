%a
z=zeros(1,21) % se initializeaza vectorul cu o singura linie de zerouri
z(6)=1  % elementul de pe a 6-a coloana devine 1
figure(1) %se afiseaza in figura 1 graficele de mai jos
subplot(2,1,1) %impartim graficul mare in 2 grafice cu functia subplot
n=0:20
stem(n,z), title('punctul a): n=0:20'),grid %reprezentatea lui z de la 0 la 20 cu functia stem
subplot(2,1,2) %impartim graficul mare in 2 grafice cu functia subplot
m=-5:15
stem(m,z), title('punctul a): m=-5:15'),grid %reprezentarea lui z de la -5 la 15 cu functia stem

%b
n=0:20
t=abs(10-n)
figure(2) %se afiseaza in figura 2 graficele de mai jos
subplot(2,1,1)  %impartim graficul mare in 2 grafice cu functia subplot
plot(n,t) ,title('punctul b): n=0:20'),grid  %reprezentarea lui t pentru n de la 0 la 20 cu functia plot
subplot(2,1,2)  %impartim graficul mare in 2 grafice cu functia subplot
stem(n,t) ,title('punctul b): n=0:20'),grid  %reprezentarea lui t in ] pentru n de la 0 la 20 cu functia stem

%c
n1=-15:25
n2=0:50
x1=sin(n1*pi/17)
x2=cos(n2*pi/sqrt(23))
figure(3) %se afiseaza in figura 3 graficele de mai jos
plot(n1,x1,n2,x2)
figure(4) %se afiseaza in figura 4 graficele de mai jos
subplot(2,1,1) %impartim graficul mare in 2 grafice cu functia subplot
stem(n1,x1) ,title('punctul c): functia x2'),grid %reprezentarea functiei x1 in format stem,trebuie facuta separat intrucat nu merge stem(a,b,c,d..)
subplot(2,1,2) %impartim graficul mare in 2 grafice cu functia subplot
stem(n2,x2) ,title('punctul c): functia x2'),grid %reprezentarea functiei x2 in format stem,trebuie facuta separat intrucat nu merge stem(a,b,c,d..)

