function [Ra] = Proyecto_Ra(Z, n, Zmed)
suma=0; %se delcara una variable suma inicializada en cero
for i=1:n 
    suma=suma+abs(Z(i)-Zmed); %se suman los valores del absoluto de la resta de los valores de arreglo menos el promedio
end
Ra=suma/n; %dicha suma se divide entre la cantidad de datos
x = 1:n;

%para graficar...
for i=1:n %vector de uno al largo
    y1(i)=Zmed+Ra; %linea sobre el promedio
end
for i=1:n
    y2(i)=Zmed-Ra; %linea debajo del promedio
end
for i=1:n
    pro(i)=Zmed; %linea del promedio
end
plot(Z) %grafica del vector inicial
hold on
plot(x,y1,'k--',x,y2,'k--', x, pro,'r') %grafica de los tres vectores anteriores vs 'x'
hold off
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Un arreglo de datos, el tamaño del arreglo y el promedio

%Salidas: La desviación media del arreglo

%Funcionalidad: Un for suma todos los absolutos de la resta de los datos del arreglo contra el promedio. 
%luego los divide entre la cantidad de datos. Por último se grafica la Z (como referencia al arreglo inicial) y sobre de
%este, un dos vectores lineales con el valor del resultado sobre y debajo la media. 