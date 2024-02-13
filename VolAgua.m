function [Vol] = VolAgua(hs, dcil, acil, dcon, acon)

%calcula el volumen de agua dentro de un recipiente parte cilindrico, parte
%cónico. 

if hs<=acil %Si la algura del agua es menor o igual a la altura del cilindro
    hcil=hs; %La altura del agua en el cilindro será la altura del agua total
else
    hcil=acil; %caso contrario, la altura del agua en el cilindro será la altura del cilindro
end

rmin=dcil/2; %el radio minimo es el diametro del cilindro dividido entre dos
rmax=dcon/2; %el radio maximo es el diametro superior del cono dividido entre dos
hcon=hs-acil; %la altura del agua en el cono en la altura total del agua menos la altura del cilindro
rhcon=hcon*rmax/acon; %el radio de la posicion del agua en el cono será obtenido por una relacion (regla de tres). 
VolCil=(pi*(rmin.^2))*hcil; %la formula para obtener el volumen de agua en el  cilndro
VolCon=pi/3*hcon*(rmin.^2+(rmin*rhcon)+rhcon.^2); % la formula para obtener el volumen de agua en el cono

if hs<=acil %Si la altura del agua en menor o igual que la altura del cilindro
    Vol=VolCil; %el volumen del agua sera igual al volumen del cilindro (el cual usó la altura del agua en su formula)
else
    Vol=VolCon+VolCil; %el volumen del agua sera la suma de los dos volumenes 
    %(el cilindro con su altura total y el conico con la altura del agua)
    
end



