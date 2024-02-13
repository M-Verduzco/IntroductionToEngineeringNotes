
%Calcula el crecimiento de una poblacion animal
%Se dice que la poblacion de canguros ha crecido
%ultimamente a razon de 7% cada año.
%Al final de 2019 habia 2.5 millones
%Cuantos habra en diez años mas? (2029)
%Usar expGD33 y graficar
tf=10;
n=[0:1:10]; %Diez años a partir de ahora
A0=2.5; %Millones
k=0.07; %7% 
Atn=expGD33(A0,k,n);
nN=n+2019; %normalizado
plot(nN,Atn, 'x-g')
grid on
fprintf('El numero de kanguros para el %i, será: %2.2f  millones \n', 2029, Atn(10+1))
fprintf('\n')