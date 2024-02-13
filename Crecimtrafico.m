%Calcula el crecimiento de trafico de voz(llamadas)
%Para 2000 era de 50M; para 2015 era de 450M
%Calcular su volumen para 2020 Graficar
%A cual tasa anual promedio % crecio en 20 anos?
%Usa la funcion expGD32
n=[0:20];
[Atn,k]=expGD32(50,450,15,n);
kp=k*100;
%plot(n,Atn)
nN=n+2000; %normalizado desde 2000
plot(nN,Atn)
grid on
title('Crecimiento exponencial')
ylabel('Millones de llamadas')
xlabel('Año')
fprintf('La tasa anual promedio es %2.2f por ciento. \n',kp)