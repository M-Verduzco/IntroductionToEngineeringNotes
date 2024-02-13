function [Z] = Proyecto_LectorImagen(nomImagen)
AMF=imread(nomImagen); %se iguala AMF con el parametro de la función (que es el nombre de la imagen)

%se declaran los inputs de columas y filas de origen y destino
co= input('Columna de Inicio: '); %x1
fo= input('Fila de Incio: '); %y1
cd= input('Columna Final: '); %x2
fd= input('Fila Final: '); %y2

if  (fd-fo)==0 || abs(fd-fo)==abs(cd-co) || (cd-co)==0
    
    for n=co:cd
        vect(n) = 0;
    end
    
    if (fd-fo)==0 %trayectoria horizontal
        incf=0;
    elseif (fd-fo)>0
        incf=1;   % diagonal hacia abajo 
    else
        incf=-1;  %diagonal hacia arriba
    end
    
    if (cd-co)==0  %trayectoria vertical
        incc=0;
    elseif (cd-co)>0
        incc=1;   %diagonal hacia la derecha
    else
        incc=-1;  %diagonal hacia la izquierda
    end
    
    if incf==0   %recorrido horizontal
        m=(abs(cd-co))+1;
        f=fo;
        c=co;
        vect(1)=AMF(fo,co); %primer valor en la trayectoria 
        
        for n=2:m
            f=f+incf;
            c=c+incc;
            vect(n)=AMF(f,c);
        end
        vectf=vect(1:m); %los m valores en la trayectoria
        
   elseif incc==0  %recorrido vertical
       m=(abs(fd-fo))+1;
       f=fo;
       c=co;
       vect(1)=AMF(fo,co); %primer valor en la trayectoria
       
       for n=2:m
           f=f+incf;
           c=c+incc;
           vect(n)=AMF(f,c);
       end
       
       vectf=vect(1:m); %los m valores de la trayectoria
       
   else
        %recorrido diagonal
        deltaf=abs(fd-fo);
        deltac=abs(cd-co);
       if (deltaf-deltac)==0
            m=deltaf+1;
            f=fo;
            c=co;
            vect(1)=AMF(fo,co); %primer valor en la trayectoria
          
            for n=2:m
                f=f+incf;
                c=c+incc;
                vect(n)=AMF(f,c);
            end
            vectf=vect(1:m); %los m valores de la trayectoria
       end
    end
    
    imshow(AMF) %se grafica la imagen
    hold on
    plot(138,138,[co,cd],[fo,fd]) %se raya sobre la imagen la linea del recorte
    
    figure ('Name','0.2- Gráfica del Corte', 'NumberTitle', 'off');
    x=1:length(vectf); 
    plot(x,vectf) %se grafica el vector original
    axis([0 140 0 256])
    grid on
    hold off
    
else
    disp('Trayectoria Invalida')
end
Z=vectf;
end

%Autores: Todo el equipo (Montserrat Camacho, Erik Morales, Abraham
%Guerrero & Mauricio Verduzco)

%Entradas: Una imagen JPG de 138 x 138 pixeles.

%Salidas: Un arreglo de datos de la sección hecha por el usuario. 

%Funcionalidad: Se ingresan como 'inputs' las coordenadas de origen y
%destino del corte de la imagen. El programa evalua la validez del vector y
%lo clasifica en horizonal, vertical o diagonal. Luego el programa grafica
%sobre la imagen la sección de datos seleccionados con una linea roja y
%también grafica el arreglo de datos.
% *NOTA: Este programa está basado en el trabajo del profesor Enrique
% Melrose Aguilar. 

