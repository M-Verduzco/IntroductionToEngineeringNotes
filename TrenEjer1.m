%Un tren y un auto se aproximan a un crucero x,y
%El tren se encuentra a 120m del crucero y
%El auto se encuentra a 62m en t=0
%El tren viaja a una velocidad constante de 86km/h
%El auto en t=0 va a 45km/h pero acelera a 1.22m/sec^2
%Chocan ambos vehiculos?
%Hacer una tabla con los valores de (x) y (y) la distancia entre ambos
%vehiculos d=sqrt(x^2+y^2)

pot=-120; %poscicion en mts antes del crucero del tren (t=0)
poc=-62; %posicion en mts antes del crucero del carro (t=0)
vot=(86*1000)/3600; %conversion de km/h en mts/seg
voc=(45*1000)/3600; %conversion
ac=1.22; %aceleracion
t=[0:10]; %vector de tiempo en segundos
x= poc + voc*t + 0.5*ac*t.^2; %formula para x (tiene aceleracion)
y= pot + vot*t; %forula para y (velocidad constante
d= sqrt(x.^2+y.^2); %distancia
tabla = [t',y',x',d']

