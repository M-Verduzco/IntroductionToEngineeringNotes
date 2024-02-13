
function [v0,ttot] = distpar2(dmax)
%Esta funcion calcula la velocidad inicial
%de un tiro parabolico para una dmax determinada
%con un angulo de salida fijo de 45 grados.
%Calcula el tiempo total hasta impacto
%Grafica el tiro
theta=45;
g=9.81;
v0=((dmax*g)/(2*cos(theta*(pi/180))*sin(theta*(pi/180))))^0.5;
%v0=((dmax*g)/(sin(2*theta*(pi/180))))^0.5;
ttot=(2*v0*sin(theta*(pi/180)))/g;
tgraf=linspace(0,ttot,200);
x=v0*cos(theta*(pi/180))*tgraf;
y=v0*sin(theta*(pi/180))*tgraf-0.5*g*tgraf.^2;
plot(x,y)
axis([0 6000 0 2000])
grid on
xlabel('Distancia (mt)')
ylabel('Altura (mt)')

end

