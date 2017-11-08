clear all 
close all
T=3;
f=1/T;
A=0.8;
t1=0:0.002:10;      %se definesc vectorii cu rezolutiile cerute
t2=0:0.02:10;
t3=0:0.2:10;
s1=A*sin(2*pi*f*t1);

subplot(3,2,1)
plot(t1,s1,'r')
for i=1:length(s1)
    if s1(i)<0
        s1(i)=-s1(i)
    end
end;
subplot(3,2,2)
plot(t1,s1,'k');
ylim([-1,1])

subplot(3,2,3)
s2=A*sin(2*pi*f*t2);
plot(t2,s2,'r')
for i=1:length(s2)
    if s2(i)<0
        s2(i)=-s2(i)
    end
end;
subplot(3,2,4)
plot(t2,s2,'y');
ylim([-1,1])


subplot(3,2,5)
s3=A*sin(2*pi*f*t3);
plot(t3,s3,'r')
for i=1:length(s3)
    if s3(i)<0
        s3(i)=-s3(i)
    end
end;
subplot(3,2,6)
plot(t3,s3,'g');
ylim([-1,1])