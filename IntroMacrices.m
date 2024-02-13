%Este es un programa de entrenamiento de matrices
%Tiene ejercicios y comentarios.
%Las matrices más sencillas son "arrays" bidimensionales.
%Creación de una matriz:
Ma=[5 35 43; 4 76 81; 21 32 40]%matriz(3x3)
Mb=[1 2 3 4; 5 6 7 8; 9 10 11 12]; %(3x4)
%Matriz de numeros aleatorios:
%C=rand(n) matriz n x n entre 0 y 1
a= 0;
b=10;
Mc= round((b-a)*rand(5)+a);
%D=rand(m,n) matriz m x n entre 0 y 1 m: filas, n: cols
Md=rand(3,4);
%Matriz de ceros F=zeros(m,n)
Mf=zeros(3,2);
%Matriz de unos G=ones(m,n)
Mh=ones(4,3);
%Matriz identidad Heye(n) (Cuadrada)
Mh=eye(4);
%partes de una matriz
%Mj=Ma(m,:) todos los elementos de la columna m de la matriz Ma
Mj=Ma(:,2);
%Mk=Ma(m,:)todos los elementos de la fila m de la matriz Ma
Mk=Ma(3,:);
%Tamaño de cualquier matriz: size(M)
size(Ma);
%Transposicion de matrices mt=m'
Mat=Ma';
%Imversa de una matriz Mai=inv(Ma)
%Si Mai es la inversa de Ma: Ma*Mai=Mai*Mai=I identidad
Mai=inv(Ma);
H=Ma*Mai
%Atencion Ma*Mai^-1=I
G=Ma*Mai;



