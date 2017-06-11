% Método usado para difuminar la imagen utilizando un emborronado morfológico con forma de disco
% y de 12 pixeles de amplitud
function b = emborronado_morf(a)
    [fil,col,cap]= size(a);
    if cap==1;
        b=a
        return
    end
    b=reshape(a,[fil,col*cap]);
    se = strel('disk',12);
    %b1=imerode(b,se);
    % Se utiliza como elemento estructuante al disco de 12 espacios creado en la línea anterior
    % y se dilata la imagen
    b1=imdilate(b,se);
    %b1=imopen(b,se);
    %b1=imclose(b,se);
    b=b1;
    b=reshape(b1,[fil,col,cap]);
end
