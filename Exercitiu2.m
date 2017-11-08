j=1;
x=randn(1,20);      %generare vector cu var. aleatoare
y=[];               %vector in care se vor salva valorile negative
for i=1:20      %selectare elementele negative si afisare
    if x(1,i)<0
        y(1,j)=x(1,i);
        j=j+1;
    end
end

x=y %afisare