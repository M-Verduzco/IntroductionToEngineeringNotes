%Un empresario (B) ha observado a su competidor (Empresa A) en los últimos
%15 meses y comparado sus respectivos volúmenes de ventas y sabe que está 
%próximo a alcanzarlo y quizás rebasarlo.

empA = [250 280 300 310 325 330 340 330 320 300 290 280 270 260 250];
empB = [80 90 130 140 145 140 130 125 120 125 130 140 155 180 190];
x = 1:(length(empA));
plot(x,empA, 'b--', x, empB, 'r--'); %plots de vectores originales
hold on

for  i = 16:20 %un for para llenar la proyección hasta el 20
empA(i) = expGD32(250,250,14,i); %Con ayuda de expGD32 podemos calcular el crecimiento
empB (i) = expGD32(80, 190, 14, i); %Y lo guardamos en el lugar respectivo del vector
end

if(length(empA)==length(empB)) %Comparamos vectores para no cometer errores
    x = 1:(length(empA));
end

ajusteA=polyfit(x,empA, 3); %Hacemos el ajuste de tercer grado
ajusteB=polyfit(x,empB, 4); %Ajuste de cuarto

y2A=polyval(ajusteA, x); %Hacemos el vector graficable
y2B=polyval(ajusteB, x); %Hacemos el vector graficable

plot(x,y2A, 'b', x, y2B, 'r') %Grafica final

