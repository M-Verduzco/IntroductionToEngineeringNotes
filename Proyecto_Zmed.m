function [Zmed] = Proyecto_Zmed(Z, n)



suma=0; %variable para almacenar la suma inicializada en cero
for i=2:n-1 %ciclo que va con aumento de uno en uno hasta el largo del vector
    suma=suma+Z(i); %se van sumando TODOS los valores del arreglo en la variable suma
end
Zmed=suma/(n); %la variable suma se divide entre la cantidad de datos

x = 1:n; %se crea un vector lineal 'x' que va a tener el mismo tamaño que el arreglo
for i=1:n
    y(i)=Zmed; %se crea un vector lineal 'y' que va a tener el valor del promedio a lo largo de todo el tamaño
end
plot(Z) %gráfica del vector inicial
hold on
plot(x,y) %se contrapone 'x' vs 'y'
hold off
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Un arreglo de datos y el tamaño del arreglo

%Salidas: La media de los datos

%Funcionalidad: Un for suma todos los datos del arreglo y luego los divide
%entre la cantidad de datos. Luego se grafica la Z (como referencia al arreglo inicial) y sobre de
%este, un vector lineal con el valor del resultado. 
