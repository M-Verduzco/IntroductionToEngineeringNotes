%Representa una fuente de Corriente Alterna AC
%Grafica un seniode vs=c0*sin(w*t)
%v0 valor extremo + y -
%w frecuencia angular en radiantes w=2*pi*f
%f frecuencia en ciclos/seg=Hz Hertz
%t vector con n instantes de observación
%En este ejemplo: f=60Hz v0=110 Volts
%Tiempo total de observación = 70mseg=0.070 segs
%n=560 instantes de observación

v0=110;
f=60;
w=2*pi*f;
t=linspace(0,0.070,280);
vs=v0*sin(w.*t);
plot(t,vs)
figure
plot(t,vs,'o-b') %para ver los intantes de obvrvación
title('Fuente de Corriente Alterna')
xlabel('Tiempo en segundos')
ylabel('Volts')
