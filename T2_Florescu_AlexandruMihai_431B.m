% Tema 2 - SP - numarul din lista = 1, deci vom avea un semnal dreptugnhiular
% cu perioada P=40 si numarul de coeficienti N = 50 si durata semnalului D=1
P=40;                                                       %P e perioada semnalului
D=1;                                                        %un factor de umplere 1 din 40 este egal cu 2,5%, deci durata impulsului e 2,5% din perioada
N=25;                                                       %Nr de coeficienti ai seriei Fourier,deci de la -25 la 25 sunt 50 de termeni
Frecv=1/P;                                                  %Frecventa semnalului, care e inversul perioadei
t=0:0.001:4*P-0.001;                                        %Am esantionat semnalul si am ales 4*P pentru a afisa 4 perioada ale aceluiasi semnal la fel
                                                            %ca in exemplul atasat in PDF
w0=2*pi*Frecv;                                              %w0 e pulsatia unghiulara a semnalului
x=0.5+0.5*square(2*pi*t/P,2.5);                             %am realizat semnalul dreptunghiular cu factorul de umplere 2,5% 
                                                            %corespunzator lui D=1 din P=40, deoarece in cazul semnalului
                                                            %dreptunghiular D reprezinta durata(latimea) impulsului-cat timp are
                                                            %valoarea 1 logic.
                                                            % Determinam coeficientii SFE
for k = -N:N                                                %k este variabila dupa care se realizeaza suma
    xf = x;                                                 %xf e semnalul nostru realizat dupa formula SF data
    xf = xf.*exp(-j*k*w0*t);                                %de la prima tema .*=înmultire între doua matrice (sau vectori) element cu element
    X(k+26) = trapz(t,xf);                                  %functia realizeaza integrala trapezoidala returnand cea mai apropiata valoare.
                                                            %integrala e echivalentul unei sume, motiv
                                                            %pentru care a folosit aceasta functie pe care
                                                            %am gasit-o pe https://www.mathworks.com/help/matlab/ref/trapz.html
end
                                                            %Reconstruim semnalul dat
x_sgnnou(1:length(t)) = 0;                                  %x_sgnnou reprezinta semnalul nou
for i = 1:length(t);
for k = -N:N
x_sgnnou(i) = x_sgnnou(i) + (1/P)*X(k+N+1)*exp(j*k*w0*t(i));%am construit
                                                            %semnalul folosind formula data in PDF-ul primit
end
end                                                         % Semnalul dat cu coeficientii seriei
figure(1);                                                  %Prima imaginea afisata in care apar semnalul x si semnanul xf suprapuse
plot(t,x, 'r');                                             % afisez mai intai x(t)
title('x(t) si armonicile semnalului esantionat');
hold on                                                     %functie ce retine afisajul primului grafic(semnalul nostru x)
plot(t,x_sgnnou);                                           %afisam semnalul corespunzator seriei Fourier
xlabel('Timp (s)');                                         %pe axa x se afla timpul masurat in secunde
ylabel('Amplitudine');                                      %pe axa y se afla ampltitudinea semnalului setata la 1 la fel ca in semnalul dat ca exemplu


F = -N*Frecv:Frecv:N*Frecv;                                 % Definim vectorul de frecvente pentru afisarea spectrului pentru cei 50 de termeni
figure(2);                                                  %a doua imagine in care apare spectrul semnalului
stem(F,abs(X));                                             %pentru afisarea discreta a spectrului de amplitudine, acesta fiind discret
title('Spectrul lui x(t)');                                 % punem tilu graficului 2 corespunzator spectrului semnalului
xlabel('Frecventa (Hz)');                                   %pe axa x se afla frecenta
ylabel('|X|');                                              %pe axa y se afla modulul, adica amplitudinea

%Conform cursului de SS, teoria seriilor Fourier (trigonometrica, armonica si complexa) ne spune
%ca orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri
%si cosinusuri de diferite frecvente, fiecare ponderat cu un anumit coeficient. 
%Acesti coeficienti reprezinta practic spectrul (amplitudinea pentru anumite frecvente).
%Semnalul reconstruit foloseste un numar finit de termeni(N=50 in tema) si se apropie ca
%forma de semnalul original, insa prezinta o marja de eroare. Cu cat marim
%numarul de coeficienti ai SF, aceasta marja de eroare va fi din ce in ce mai
%mica. In plus se observa faptul ca semnalul poate fi aproximat printr-o
%suma de sinusoide, variatiile semnalului prezentand un caracter sinusoidal.