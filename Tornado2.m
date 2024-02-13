
%Programa Tornado2
z=0:pi/100:100*pi;
x=z.*cos(z+15);
y=z.*sin(z);
comet3(x,y,z)
axis([-80 80 -80 80 0 80])
plot3(x,y,z)
grid on
xlabel('eje X'),ylabel('eje y'),zlabel('eje z')