clear all
close all

t1=0:0.002:10;      %se definesc vectorii cu rezolutiile cerute
t2=0:0.02:10;
t3=0:0.2:10;
T=0.25;                %perioada
f=1/T;                 %frecventa
s=[];
s1=square(2*pi*f*t1);
s2=square(2*pi*f*t2);
s3=square(2*pi*f*t3);

s1(find(t1>=0 & t1<0.25))=-7;
s1(find(t1>=0.25 & t1<0.5))=-5;
s1(find(t1>=0.5 & t1<0.75))=-3;
s1(find(t1>=0.75 & t1<1))=-1;
s1(find(t1>=1 & t1<1.25))=1;
s1(find(t1>=1.25 & t1<1.5))=3;
s1(find(t1>=1.5 & t1<1.75))=5;
s1(find(t1>=1.75 & t1<2))=7;
s1(find(t1>=2 & t1<2.25))=5;
s1(find(t1>=2.25 & t1<2.5))=3;
s1(find(t1>=2.5 & t1<2.75))=1;
s1(find(t1>=2.75 & t1<3))=-1;
s1(find(t1>=3 & t1<3.25))=-3;
s1(find(t1>=3.25 & t1<3.5))=-5;
s1(find(t1>=3.5 & t1<3.75))=-7;

figure(1)
plot(t1,s1)
grid on;


s2(find(t2>=0 & t2<0.25))=-7;
s2(find(t2>=0.25 & t2<0.5))=-5;
s2(find(t2>=0.5 & t2<0.75))=-3;
s2(find(t2>=0.75 & t2<1))=-1;
s2(find(t2>=1 & t2<1.25))=1;
s2(find(t2>=1.25 & t2<1.5))=3;
s2(find(t2>=1.5 & t2<1.75))=5;
s2(find(t2>=1.75 & t2<2))=7;
s2(find(t2>=2 & t2<2.25))=5;
s2(find(t2>=2.25 & t2<2.5))=3;
s2(find(t2>=2.5 & t2<2.75))=1;
s2(find(t2>=2.75 & t2<3))=-1;
s2(find(t2>=3 & t2<3.25))=-3;
s2(find(t2>=3.25 & t2<3.5))=-5;
s2(find(t2>=3.5 & t2<3.75))=-7;

figure(2)
plot(t2,s2)
grid on;


s3(find(t3>=0 & t3<0.25))=-7;
s3(find(t3>=0.25 & t3<0.5))=-5;
s3(find(t3>=0.5 & t3<0.75))=-3;
s3(find(t3>=0.75 & t3<1))=-1;
s3(find(t3>=1 & t3<1.25))=1;
s3(find(t3>=1.25 & t3<1.5))=3;
s3(find(t3>=1.5 & t3<1.75))=5;
s3(find(t3>=1.75 & t3<2))=7;
s3(find(t3>=2 & t3<2.25))=5;
s3(find(t3>=2.25 & t3<2.5))=3;
s3(find(t3>=2.5 & t3<2.75))=1;
s3(find(t3>=2.75 & t3<3))=-1;
s3(find(t3>=3 & t3<3.25))=-3;
s3(find(t3>=3.25 & t3<3.5))=-5;
s3(find(t3>=3.5 & t3<3.75))=-7;

figure(3)
plot(t3,s3)
grid on;