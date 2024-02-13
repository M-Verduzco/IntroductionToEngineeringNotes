
%Trayectoria de un proyectil en 3D
%Eje x hacia el Este; Eje y hacia el Norte; Eje z hacia arriba.
% Se supone que hay fuertes vientos que soplan hacia el Oeste o
%sea que genera una velocidad constante del proyectil en
%direccion oeste de 30mt/sec (vx=-30 m/s)
% El proyectil se dispara con una velocidad inicial de 250 mt/s
%con un angulo relativo al suelo de 65grados. La posicion del
%lanzamiento es de x=3000 mt, y=0 mt. La trayectoria es
%parabolica (g=9.81 mt/sec^2)
% Graficar la trayectoria sin viento y con el.
v0=250;
g=9.81;
alfa=65;
x0=3000;
y0=0;
z0=0;
vx=-30; %vel constante del viento en x
%Componentes de v0
v0y=v0*cos(alfa*(pi/180));
v0z=v0*sin(alfa*(pi/180));
%La posicion inicial (x0,y0,z0) es el punto (3000,0,0)
%En la direccion vertical la velocidad esta dada por:
% vz=v0z-g*t por lo tanto la posicion es: z=z0+v0z*t-1/2g*t^2
%Para calcular el tiempo que se requiere para alcanzar el
%punto mas alto vz=0 entonces thmax=v0z/g y el tiempo de vuelo
% es dos veces eso: ttot=2*thmax
% En las otras coordenadas las ecuaciones son: x=x0+vx*t
%y=y0+v0y*t
ttot=2*(v0z/g);
tplot=linspace(0,ttot,100); %tplot tiempo para graficar
z=z0+v0z*tplot-0.5*g*tplot.^2;
y=y0+v0y*tplot;
x=x0+vx*tplot; %con viento constante
xsinviento(1:length(y))=x0; % x es constante si no hay viento
plot3(x,y,z,'k',xsinviento,y,z,'r'); %plotea las dos
%trayectorias
grid on
axis([0 6000 0 6000 0 3000]);
xlabel('x(mt)');ylabel('y(mt)');zlabel('z(mt)');
%Coordenadas del impacto
impactosinviento=[xsinviento(length(y)) y(length(y))]
impactoconviento=[x(length(y)) y(length(y))]


