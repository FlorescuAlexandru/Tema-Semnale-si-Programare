a=0:0.1:2
%am initiatilizat vectorul a, vector linie, cu 21 de elemente
b=ones(21,1)
%am initializat vectorul b, vector coloana,cu 21 de elemente pentru a avea loc inmultirea dintre a si b
R1=a*b; %R1 reprezinta rezultatul inmultirii dintre a si b si e un numar
R2=b*a; %R2 reprezinta rezultatul inmultirii dintre b si a si e o matrice
R3=a.*a; %R3 reprezinta rezultatul inmultirii element cu element a vectorului a, rezultand un vector cu o lnie si 21 de elemente
R4=b.*b; %R4 reprezinta rezultatul inmultirii element cu element a vectorului b, rezultand un vector cu o 21 de linii si o coloana
 for i = 1:1:length(a)
        R5(i) = a(i)*b(i); %R5 reprezinta rezultatul inmultirii element cu element a celor doi vectori
 end
display(R1) %afiseaza pe R1
display(R2) %afiseaza pe R2
display(R3) %afiseaza pe R3
display(R4) %afiseaza pe R4
display(R5) %afiseaza pe R5