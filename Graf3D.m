%Programa de graficado 3D con funciones Matlab
clear,clc
x=linspace(0,10*pi,25);
y=sin(x);
z=cos(x);
comet3(x,y,z)
hold on
plot3(x,y,z)
grid on
xlabel('angulo'),ylabel('cos(x)'),zlabel('sin(x)'),title('Unresorte')
