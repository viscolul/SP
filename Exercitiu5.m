clear all 
close all

F=50;
t1=0:0.001:0.2;
s1=2*sin(2*pi*F*t1);
subplot(3,1,1)
plot(t1,s1,'.-'), xlabel('Timp[s]'),grid

t2=0:0.01:0.2;
s2=2*sin(2*pi*F*t2);
subplot(3,1,2)
plot(t2,s2,'.-'), xlabel('Timp[s]'),grid

t3=0:0.0002:0.2;
s3=2*sin(2*pi*F*t3);
subplot(3,1,3)
plot(t3,s3,'.-'), xlabel('Timp[s]'),grid


% a) Ce se intampla la modificarea pasului de variatie al var. t
%    Cu cat pasul este mai mare, cu atat semnalul afisat este mai distorsionat
%    deoarece nu apar suficiente puncte pentru a creea grafiul
%    cu cat pasul se micsoreaza semnalul devine mai clar

figure
F2= 20;
s4=2*cos(2*pi*F2*t1);
plot(t1,s1), xlabel('Timp[s]'),grid 
hold on
plot(t1,s4, 'r'), xlabel('Timp[s]'),grid