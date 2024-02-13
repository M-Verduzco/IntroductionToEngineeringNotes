%Prueba de una grafica en movimiento
clear,clc
x=-10:1:10;
k=-1;
y=k*x.^2-2;
h=plot(x,y); %h se define como "objeto"
grid on
axis([-10 10 -100 100])
while k<1
 k=k+0.01;
 y=k*x.^2-2;
 set(h,'XData',x,'YData',y); %manejo del objeto
 drawnow %en cada iteracion
 pause(0.01)
end
