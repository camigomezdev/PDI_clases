function [ d ] = objeto_mayor( a )
    [fil,col,cap]=size(a);
    if cap == 1; cap=3;end
    % se limpia el borde de la imagen y las secciones que estén pegadas al mismo
    a=imclearborder(a);
    % Se binariza la imagen a blanco y negro
    [l,n] = bwlabel(a);
    %figure(1); imagesc(l);colormap('hot');
    %title(['Numero objetos = ', num2str(n)]);
    %impixelinfo
    b=[];
    for i=1:n
        c=a*0;
        c(l==i)=255;
        % Dejar solo las zonas de color blanco y calcular el área de cada región resultante
        area = sum(c(:)/255);
        figure(7);imshow(c);
        title(['Area = ', num2str(area)]);
        pause%(1);
        b=[b,area];
    end

    %figure(2); plot(b);
    % Buscar y dejar solo la región que mayor área tiene y recortarla del resto de la imagen
    ind = max(b);
    ind = find(b==ind);
    d=a*0; d(l==ind)=255;
    [X,Y] = find(d>0);
    x_min=min(X(:)); x_max = max(X(:));
    y_min=min(Y(:)); y_max = max(Y(:));
    d(x_min:x_max,y_min:y_max)=1;
    d=[d,d,d];
    d=reshape(d,[fil,col,cap]);

end
