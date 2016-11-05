v=randn(1,10) %am generat vectorul v, cu elemente aleatoare, dupa o distributie gaussiana
c=0 %am initializat un contor c pentru a numara cate elemente din v sunt negative
for i=1:1:10 %parcurgem vectorul
    if v(i)<0 
        c=c+1 %de fiecare data cand intalnim un numar negativ, c-ul se incrementeaza
       x(1,c)=v(i) %am pus elementele negative ale lui v intr-o matrice x cu o linie si 21 de coloane
    end
    
end