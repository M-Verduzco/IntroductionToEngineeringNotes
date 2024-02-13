%Grafica en movimiento bis
clear,clc
x=-10:0.02  :10;
k=0.1;
y=k*(sin(x)./x);
h=plot(x,y); %define h como "objeto"
%plot(x,y) %a sustituir por h=plot(x,y)
grid on
axis([-10 10 -0.4 1.2])
hold on
while k<1
 k=k+0.01;
 y=k*(sin(x)./x);
 plot(x,y) %a sustituir por set y drawnow
 %set(h,'XData',x,'YData',y);
 drawnow
 pause(0.1)
end