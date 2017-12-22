P = 40; % perioada
D = 5; % durata
N = 50; % numarul de coeficienti
F=1/P; % frecventa 
w0=2*pi/P; % pulsatia
t=0:0.02:P-0.02; % timpul pe care calculam integrala (o perioada); 
                 % rezolutia temporala trebuie sa fie de 2 ori mai mica decat perioada semnalului (teorema esantionarii);

% semnalul dreptungiular
x = zeros(1,size(t,2)); % initializarea lui x ( semnalul dreptunghiular) cu zerouri
x(t<=D/2) =1; % de la 0 la D/2 x are valoarea 1 ( generam amplitundinea semnalului)
x(t>P-D/2) =1; % de la D/2 la P x are valoarea 1 ( generam amplitundinea semnalului)
t_4perioade = 0:0.02:4*P-0.02; % vectorul timp pentru reprezentarea pe 4 perioade
x_4perioade = repmat(x,1,4); % vectorul x pentru reprezentarea pe 4 perioade ( genram 4 perioade de semnal dreptunghi)
   
% integrala numerica prin functia trapz
for k = -N:N
    x_temp = x;
    x_temp = x_temp.*exp(-j*k*w0*t); % vectorul inmultit cu termenul corespunzator
    X(k+51) = trapz(t,x_temp); % trapz calculeaza integrala prin metoda trapezului 
    %(imparte suprafata in forme trapezoidale pentru a calcula mai usor aria)
end

x_refacut(1:length(t)) = 0; % initializarea semnalului reconstruit cu N puncte

%reconstructia lui x(t) folosind N coeficienti
for index = 1:length(t);
for k = -N:N
x_refacut(index) = x_refacut(index) + (1/P)*X(k+N+1)*exp(j*k*w0*t(index));
end
end

figure(1);
plot(t_4perioade,x_4perioade,'k'); % afisarea lui x(t)
title('x(t) cu linie solida si reconstructia folosind N=50 coeficienti(linie punctata)');
hold on
x_refacut_4perioade = repmat(x_refacut,1,4); % generarea lui x reconstruit pentru 4 perioade
plot(t_4perioade,x_refacut_4perioade,'-- r'); % afisarea lui x reconstruit pentru 4 perioade
xlabel('Timp [s]');
ylabel('Amplitudine');

f = -N*F:F:N*F; % generarea vectorului de frecvente
figure(2);
stem(f,abs(X)); % afisarea lui X
title('Spectrul lui x(t)');
xlabel('Frecventa [Hz]');
ylabel('|X|');

% Comentarii:
% Conform dezvoltarii in serii Fourier, orice semnal periodic poate fi aproximat
% printr-o suma infinita de sin si cos.
% Coeficienti lui sin sau cos reprezinta spectrul de amplitudini al
% semnalului.
% Semnalul reconstruit folosind un numar finit de termeni se apropie ca
% forma de semnalul original dar nu este unul fidel in totalitate. Cu cat
% numarul de coeficienti este mai mare, cu atat semnalul reconstruit va fi mai fidel. 
% Se mai observa faptul ca semnalul poate fi aproximat printr-o
% suma de sinusoide: variatiile semanlului au un caracter de sinusoida.