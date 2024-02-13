


    dMax = 5800; %Distancia máxima
    v0= 250; %Volicidad inicial
    
    
    [ang] = angtiro(dMax, v0); %Distancia y velocidad --> el ángulo
        %g=9.81;
        %A=(dmax*g)/v0^2;
        %Dosth=asind(A);
        %theta=Dosth/2;
    

    [hmax,dmax]=tiropar1(v0,ang); %Velocidad y angulo --> altura
        %g=9.81;
        %v0x=v0*cos(theta*pi/180);
        %v0y=v0*sin(theta*pi/180);
        %thmax=v0y/g;
        %hmax=v0y^2/(2*g);
        %ttot=2*thmax;
        %dmax=v0x*ttot;
    
    fprintf('El ángulo es de = %3.2f grados \n', ang)
    fprintf('La altura máxima es de = %3.2f mts \n', hmax)