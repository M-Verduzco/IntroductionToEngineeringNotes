nomImagen='Imagen4AMFFinal.gif'; %nombre de la imagen

%se ejecuta la primera funcion para obtener nuestro arreglo ('Z').
figure ('Name','0.1- Imagen Recortada', 'NumberTitle', 'off');
[Z] = Proyecto_LectorImagen(nomImagen); 

n = length(Z); %Se calcula el tamaño del arreglo 

%grafica de la superficie
figure ('Name','0.3- Gráfica en 3D', 'NumberTitle', 'off');
[D] = Proyecto_GraficaEn3D(nomImagen)

%se ejecutan todas las funciones
figure ('Name','1- Promedio', 'NumberTitle', 'off');
[Zmed] = Proyecto_Zmed(Z, n)

figure ('Name','2- Desviación Media','NumberTitle', 'off');
[Ra] = Proyecto_Ra(Z, n, Zmed)

figure ('Name','3- Desviación Estándar','NumberTitle', 'off');
[RQ] = Proyecto_RQ(Z, n, Zmed)

figure ('Name','4- Máximos & Mínimos','NumberTitle', 'off');
[Rmin,Rmax, Imin,Imax] = Proyecto_RmaxRmin(Z,n)

%Condideramos incesesaria la grafica de esta función
[Rt] = Proyecto_RT(Rmax, Rmin)

figure ('Name','6- Promedio Picos & Valles','NumberTitle', 'off');
[Rz] = Proyecto_Rz(Z, n, Zmed)

figure ('Name','7- Coeficiente de Asimetría','NumberTitle', 'off');
[Rsk] = Proyecto_Rsk(Z,n, RQ, Zmed)

