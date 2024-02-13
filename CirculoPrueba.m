%Este programa de prueba dibuja un circulo de radio = 3
clc;clear;
t=0:pi/180:2*pi;
r=3;
x=r*cos(t); %Ecuacion parametrica de un circulo
y=r*sin(t);
plot(x,y) %Dibuja un circulo de radio = 3
axis([-3,3,-3,3])
axis square


