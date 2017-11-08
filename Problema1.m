clear all
close all
t1=0:0.002:10;      %se definesc vectorii cu rezolutiile cerute
t2=0:0.02:10;
t3=0:0.2:10;
T=2;                %perioada
f=1/T;              %frecventa
q=25;               %factorul de umplere
s1=-0.25+0.75*square(2*pi*f*t1,q);      %definire semnal cerut
s2=-0.25+0.75*square(2*pi*f*t2,q);
s3=-0.25+0.75*square(2*pi*f*t3,q);
subplot(3,1,1); plot(t1,s1);            %afisare semnale
subplot(3,1,2); plot(t2,s2);
subplot(3,1,3); plot(t3,s3);