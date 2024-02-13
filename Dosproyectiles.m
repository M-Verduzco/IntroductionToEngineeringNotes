
%Dos proyectiles se disparan al mismo tiempo del mismo lugar.
%A tiene v0=680 mt/sec y theta=42grados
%B tiene v0=680 mt/sec y theta=65grados
%Cual llega antes a tierra? Graficar

g=9.81;


v0A=900;
thetaA=46;
v0Ax=v0A*cos(thetaA*pi/180);%Solo radianes
v0Ay=v0A*sin(thetaA*pi/180);%solo radianes
thmaxA=v0Ay/g;
ttotA=2*thmaxA;

v0B=900;
thetaB=44;
v0Bx=v0B*cos(thetaB*pi/180);
v0By=v0B*sin(thetaB*pi/180);
thmaxB=v0By/g;
ttotB=2*thmaxB;

if ttotA>=ttotB
 tg=linspace(0,ttotB,200);
else
 tg=linspace(0,ttotA,200);
end
xA=v0Ax*tg;
yA=v0Ay*tg-0.5*g*tg.^2;
plot(xA,yA)
axis([0 50000 0 20000])
hold on
xB=v0Bx*tg;
yB=v0By*tg-0.5*g*tg.^2;
plot(xB,yB,'r')