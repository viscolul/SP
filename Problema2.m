clear all
close all
T=5;                %perioada
f=1/T;              %frecventa
t1=0:0.002:10;      %se definesc vectorii cu rezolutiile cerute
t2=0:0.02:10;
t3=0:0.2:10;
P=0.6;              %lungime semnal, din sintaxa sawtooth, in asa fel incat panta de crestere sa fie de 1V/s 
s1=-0.5+1.5*sawtooth(2*pi*f*t1,P);
s2=-0.5+1.5*sawtooth(2*pi*f*t2,P);
s3=-0.5+1.5*sawtooth(2*pi*f*t3,P);
subplot(3,1,1); plot(t1,s1); grid on           %afisare semnale
subplot(3,1,2); plot(t2,s2); grid on
subplot(3,1,3); plot(t3,s3); grid on