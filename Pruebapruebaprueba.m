Z = [ 1 2 3 4 5 6 7 8 9 10 ];
n= length(Z);

suma=0;
for i=1:n
    suma=suma+Z(i);
end
Zmed=suma/n

x = 1:n;
for i=1:n
    y(i)=Zmed;
end
plot(Z)
hold on
plot(x,y)
hold off