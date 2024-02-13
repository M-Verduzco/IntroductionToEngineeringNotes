function[hmax,dmax]=trayectoria(v0,theta)
%Ecuaciones de Tiro Parabolico
%v0 vel inicial en mt/seg, theta en grados
%salida: hmax altura maxima en metros
%dmax distancia maxima en metros
g=9.81;
v0x=v0*cos(theta*pi/180);
v0y=v0*sin(theta*pi/180);
thmax=v0y/g;
hmax=v0y^2/(2*g);
ttot=2*thmax;
dmax=v0x*ttot;
tgraf=linspace(0,ttot,200);
x=v0x*tgraf;
y=v0y*tgraf-0.5*g*tgraf.^2;
plot(x,y)
axis([0 6000 0 2000])
grid on
xlabel('Distancia (mt)')
ylabel('Altura (mt)')
end