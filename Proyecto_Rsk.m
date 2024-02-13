function [Rsk] = Proyecto_Rsk(Z,n, RQ, Zmed)  
suma=0; %se declara una variable 'suma' y se inicializa en cero
for i=1:n
    suma=suma+(Z(i)-Zmed)^3; % se suman todos los cubos de la diferencia entre el valor menos el promedio.
end
Rsk = suma*(1/(n*RQ^3)); %la suma se divide entre la cantidad de datos por el cubo de la desviación estándar. 

%para graficar...
x = 1:n;%vector de uno al largo de 'Z'
for i=1:n
    y(i)=Zmed+Rsk;%linea horizontal que representa el coeficiente de asimetría
end
for i=1:n
    pro(i)=Zmed;%linea que representa el promedio
end
plot(Z)%grafica el arreglo original
hold on
plot(x,y,'k--', x, pro,'r')%grafica el coeficiente vs 'x' y el promedio vs 'x'
hold off
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Un arreglo de datos, su tamaño, su desviación estándar y su
%promedio. 

%Salidas: El coeficiente de asimetría del arreglo. 

%Funcionalidad: Un for suma todos los cubos de las restas de los datos del arreglo contra el promedio. 
%Luego se multiplica dicho resultado con el valor inverso de la cantidad de datos por la desviación estándar elevada al cubo.  
%Por último se grafica la Z (como referencia al arreglo inicial) y sobre de
%este, un vector lineal con el valor del resultado sobre o debajo la
%media, dependiendo del caso. 