function [Rmin,Rmax, Imin,Imax] = Proyecto_RmaxRmin(Z,n)
% se declaran variables que almancenarán los máximos y los mínimos, y sus indices
% todas se inicializan en el primer elemento del arreglo. 
aux1=Z(1);
aux2=Z(1);
Imin=1;
Imax=1;
for i=1:n %se recorre todo el arreglo
    if(aux1>Z(i)) %si el auxiliar es mayor que el valor en 'Z'...
        aux1=Z(i); %el auxiliar toma el valor actual de 'Z'
        Imin=i; %el índice del mínimo es guardado
    end
    if(aux2<Z(i))% si el auxiliar dos es menor que el valor en 'Z'...
        aux2=Z(i); %el auxiliar toma el valor actual de 'Z'
        Imax=i; %el indice del máximo es guardado
    end
end   

%se igualan los auxiliares a los resultados. 
Rmin = aux1;
Rmax = aux2;

%para graficar...
x = 1:n;%vector de uno al largo del vector original
for i=1:n
    y1(i)=Rmin; %linea horizonal que toca el mínimo de la gráfica original
end
for i=1:n
    y2(i)=Rmax;  %linea horizonal que toca el máximo de la gráfica original
end
plot(Z)%gráfica original
hold on
plot(x, y1, 'k--') % se contraponen los máximos y mínimos vs 'x'
plot(x, y2, 'k--')
hold off
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Un arreglo de datos y el tamaño del arreglo

%Salidas: El valle mínimo, el pico máximo, el ínidice del valle mínimo y el
%índice del pico máximo.

%Funcionalidad: Se declaran cuatro auxiliares, dos para guardar los 
%valores máximos y mínimos, y dos para su índices (respectivamente). 
%Un for evalua todos los elementos del arreglo contra los auxiliares.
%En caso de que el dato supere al auxiliar, este tomará su valor. 
%Por último se grafica la Z (como referencia al arreglo inicial) y sobre de este 
%dos vectores lineales con el valor del máximo y el mínimo, sobre y debajo la media.
