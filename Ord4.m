
%Programa que grafica una ecuacion de
%cuarto orden entre ciertos limites.
%Emplea la funcion ec4ord
x=linspace(-4,4,81);
y=ec4ord(x);
plot(x,y) %plot(x,y,'o-b') %si se quieren observar los puntos de x
grid on