function [Rz] = Proyecto_Rz(Z, n, Zmed)

numP=0;%numero de picos
numV=0;%numero de valles
sumP=0;%suma de los valores de los picos
sumV=0;%suma de los valores de los valles
%todos inicializados en cero

%para graficar
x = 1:n; %vector de uno al largo del vector
for i=1:n
    y(i)=Zmed;%linea que representa el promedio
end

for i=1:n
    minimo(i)=min(Z);%linea que representa el mínimo
end

for i=1:n
    maximo(i)=max(Z);%linea que representa el máximo
end



plot(Z) % grafica del vector original
hold on
plot(x,y) % 'x' vs el promedio
plot(x, minimo, 'k--') % 'x' vs el mínimo
plot(x, maximo, 'k--') % 'x' vs el máximo


%inicia el programa
j=1; %contador para saber dónde empezaremos (inicializado en cero)

%para obtener el punto inicial de picos o valles
if(Z(1)>Zmed) %si el primer valor está por encima del promedio
    while(Z(j)>Zmed) %no se tomará en cuenta hasta que este deje de estarlo
        j=j+1; %contador para saber dónde empezaremos
    end
else %si el primer valor está por debajo del promedio
    while(Z(j)<Zmed) %no se tomará en cuenta hasta que este deje de estarlo
        j=j+1; %contador para saber dónde empezaremos
    end
end

%para obtener el último punto de picos o valles
for i=(j+1):(n-1)%sin tomar en cuenta el primer y el último valor.
    if( (Z(i)>Zmed && Z(i+1)<Zmed) || (Z(i)<Zmed && Z(i+1)>Zmed) )
        %si un valor es mayor al promedio y el siguiente es menor al promedio
        %o si un valor es menor al promedio y el siguiente mayor
        topemax=i; %guardaremos el índice el cambio en la variable 'topemax'
    end %dicha variable almacenará el último cambio (es decir, el úlimo valle o pico).
end

i=j; %empezamos a evaluar en el primer pico o valle

while (i<=topemax) %cliclo que se hará desde el primer hasta el último pico o valle
    if(Z(i)>Zmed) %si el valor está sobre el promedio es un pico...
        maxInt=Z(i);
        j=i;
        x=j;
                %si hay más de un valor sobre el promedio, 
                %se tiene que encontrar el máximo de entre ellos, 
                %solo ese será el pico.
        while (j<=topemax && Z(j)>Zmed) 
            if(Z(j)>maxInt)
                maxInt=Z(j);
                x=j;
            end
            j=j+1; %se ajusta el contador para evitar overflows
        end
        i=j;
        numP=numP+1; %se suma uno al contador de picos
        sumP=sumP+maxInt; %se agrega el valor del pico a la suma 
        plot(x,maxInt, 'r-o') %se grafica ese punto
        
    else  %si el valor está sobre el promedio es un valle...
        minInt=Z(i);
        k=i;
        x=k;
            	%si hay más de un valor debajo el promedio, 
                %se tiene que encontrar el mínimo de entre ellos, 
                %solo ese será el valle.
        while (k<=topemax && Z(k)<Zmed)
            if(Z(k)<minInt)
                minInt=Z(k);
                x=k;
            end
            k=k+1;%se ajusta el contador para evitar overflows
        end
        i=k;
        numV=numV+1; %se suma uno al contador de valles
        sumV=sumV+minInt; %se agrega el valor del valle a la suma 
        plot(x,minInt, 'r-o')%se grafica ese punto
    end
end
%por último se divide la suma de picos y valles entre la cantidad de picos
%y valles.
Rz=(sumP+sumV)/(numP+numV);



hold off
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Un arreglo, su tamaño y el promedio. 

%Salidas: El promedio de la suma de los picos y los valles de un arreglo
    
%Funcionalidad: Se evaluará todo el arreglo y cada vez que la linea pase
%por el promedio, se registra un cambio de pico a valle (o viceversa). Se
%evalua dicho cambio para encontrar el máximo o el mínimo y se guardan los
%valores en variables de sumas y la cantidad en contadores. Luego se
%dividen las sumas de los valores (de picos y valles) entre la cantidad de
%los mismos. Por último se grafica el arreglo inicial como punto de
%referencia, se grafican el máximo y el mínimo local y se destacan todos los
%picos y valles. 
% *NOTA: Cabe aclarar que los datos al inicio y al final del
%arreglo no son tomados en cuenta, sino hasta el primer paso por el
%promedio.