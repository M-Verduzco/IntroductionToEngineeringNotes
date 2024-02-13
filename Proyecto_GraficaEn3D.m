function [D] = Proyecto_GraficaEn3D(nomImagen)
AMF=imread(nomImagen); %se iguala AMF con el nombre de la imagen

for i=1:138 %se usan dos fors para recorrer toda la imagen
    for j=1:138 
        Mat(i,j) = AMF(i,j); %guardamos en la matriz 'Mat', todos los valores de AMF
    end
end

x = 1:138; %vector 'x' de 1 a 138
y = 1:138; %vector 'y' de 1 a 138

surf(x,y,Mat) %se imprime una la superficie de de 'x' vs 'x' vs 'Mat'
D=true; %respuesta booleana después de graficar
end 

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Una imagen JPG de 138 x 138 pixeles.

%Salidas: respuesta booleana 

%Funcionalidad: Con un for que va de 1 a 138, se guardan todos los valores
%de la imagen en una matriz. Dichos valores serán graficados como una
%superficie en tres dimensiones.