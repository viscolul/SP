a=0:0.1:2;                   % creeare a
l=length(a);                 %lungime pentru b ca sa poata avea loc inmultirea
b=ones(l, 1);              %creare b
p1=a*b;
p2=b*a;
p3=ones(l);              %matrice in care sa salveaza inmultirea celor 2 vectori
for i=1:21              %inmultirea elem. cu elem.
    for j=1:21
        p3(i,j)=b(i)*a(1,j);
    end
end;