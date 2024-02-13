hs=input ('Dame la altura del agua ');
dcil=input ('Dame el diametro del cilindro ');
acil=input ('Dame la altura del cilindro ');
dcon=input('Dame el diametro superior del cono ');
acon=input('Dame la altura del cono ');
Vol=VolAgua(hs, dcil, acil, dcon, acon);
fprintf('El volumen de agua es = %5.2f metros cubicos \n ', Vol)