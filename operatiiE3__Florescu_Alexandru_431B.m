function [ medie,patrat,matrice ] = operatiiE3( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
medie=mean(real(x)) %realizeaza media partilor reale ale vectorului folosind functia real
patrat=x.*x %realizeaza inmultirea element cu element, adica ridicarea la patrat a vectorului initial
matrice=x*x' %realizeaza inmultirea matricii initiale cu transpusa sa


end

