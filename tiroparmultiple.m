
%Crea una serie de trayectorias parabolicas
%variando el angulo de salida
v0=230;

for theta=15:15:75
 trayectoria(v0,theta); %Velocidad y angulo --> GRAFICA
 
 [hmax,dmax]=tiropar1(v0,theta); %Velocidad y ángulo --> altura Máxima y Distancia Máxima
 
 fprintf('La altura máxima es = %5.2f metros \n', hmax)
 fprintf('La distancia máxima es = %5.2f metros \n', dmax)
 hold on
end
     

    dist = 1000;
    [ang] = angtiro(dist, v0); %Distancia y velocidad --> el ángulo
    hold on
    fprintf('El ángulo es de = %3.2f grados \n', ang)



for vmax =[5000:250:10000];
    [distmax] = distpar2 (vmax); %Damos velocidad --> Distancia a la que llegaría en 45° (óptimo)
    hold on
    fprintf('La distancia máxima del tiro es = %5.2f metros \n', distmax)
end  
