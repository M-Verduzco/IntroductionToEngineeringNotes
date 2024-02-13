
elLog= log(2);

dif = 0.0026;

q=1/((2*0 + 1)*(2*0+2));
difAbs=abs(q-elLog);
n=1;
while difAbs>dif
    q = q+ (1/((2*n + 1)*(2*n+2)));
    difAbs=abs(elLog-q);
    n=n+1;
end
q
n-1