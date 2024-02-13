
%Ensayo de rotacion de un cuadrado
%Cuatro puntos en X Y
% P1=(20 20) P2=(10 20) P3=(10 10) P4=(20 10)
x=[20 10 10 20];
y=[20 20 10 10];
xd1=[x(1) x(1); x(2) x(4)];
yd1=[y(1) y(1); y(2) y(4)];
xd2=[x(3) x(3); x(2) x(4)];
yd2=[y(3) y(3); y(2) y(4)];
plot(xd1,yd1,'b',xd2,yd2,'b')
axis([0 30 0 30])
axis equal
grid on
hold on
%centroide
x0=(x(1)+x(2))/2;
y0=(y(2)+x(3))/2;
plot(x0,y0,'o')
%movimiento punto 1
d=sqrt((x(1)-x0)^2+(y(1)-y0)^2);
theta=asind((y(1)-y0)/d);
for gama=0:1:90
%gama=10; %grados de rotacion
alfa=(theta-gama);
xr1=(d*cosd(alfa))+x0
yr1=(d*sind(alfa))+y0
plot(xr1,yr1,'s')
xr2=(d*cosd(alfa+90))+x0
yr2=(d*sind(alfa+90))+y0
plot(xr2,yr2,'s')
xr3=(d*cosd(alfa+180))+x0
yr3=(d*sind(alfa+180))+y0
plot(xr3,yr3,'s')
xr4=(d*cosd(alfa+270))+x0
yr4=(d*sind(alfa+270))+y0
plot(xr4,yr4,'s')
xdr1=[xr1 xr1;xr2 xr4];
ydr1=[yr1 yr1;yr2 yr4];
xdr2=[xr3 xr3;xr2 xr4];
ydr2=[yr3 yr3;yr2 yr4];
plot(xdr1,ydr1,'b',xdr2,ydr2,'b')
pause(0.1)
end