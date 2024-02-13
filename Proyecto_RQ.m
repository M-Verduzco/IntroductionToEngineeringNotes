function [RQ] = Proyecto_RQ(Z, n, Zmed)
suma=0; %se declara una variable suma inicializada en cero
for i=1:n
    suma=suma+(Z(i)-Zmed)^2; % se suman los cuadrados de las diferencias de todos los datos menos el promedio
end
RQ=sqrt(suma/n); % se divide la suma entre la cantidad de datos y se le saca raiz cuadrada

%para graficar...
x = 1:n; %vector de uno al largo de 'Z'
for i=1:n
    y1(i)=Zmed+RQ; %linea de la desviación sobre el promedio
end
for i=1:n
    y2(i)=Zmed-RQ; %linea de la desviación debajo el promedio
end
for i=1:n
    pro(i)=Zmed; %linea del promedio
end
plot(Z)%gráfica del vector original
hold on
plot(x,y1,'k--',x,y2,'k--', x, pro,'r') %grafica de los vectores anteriores vs 'x'
hold off
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Un arreglo de datos, el tamaño del arreglo y el promedio

%Salidas: La desviación estándar del arreglo

%Funcionalidad: Un for suma todos los cuadrados de las restas de los datos del arreglo contra el promedio. 
%Luego le saca raiz a la división de la suma entre la cantidad de datos. Por último se grafica la Z (como referencia al arreglo inicial) y sobre de
%este, un dos vectores lineales con el valor del resultado sobre y debajo la media. 