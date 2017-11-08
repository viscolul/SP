function [medie,patrat,inmultire]=Exercitiu3(c)   % sintaxa functie
l=length(c);
medie=real(sum(c))/l;                        % creearea medieie
patrat=c.^2;                                 % creearea vectorului ridicat la patrat
inmultire=c*c.';                             % creearea unei matrici prin inmultirea vectorului cu transpusul