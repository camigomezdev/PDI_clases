function b = componentes(a)
    [fil,col,cap] = size(a);
    if cap ==1 
        b=a; 
        return; 
    end
    rgb = normaliza(a);
    %hsi
    hsi = rgb2hsv(a);
    hsi = normaliza(hsi);
    % CMYK
    cform = makecform('srgb2cmyk');
    cmyk = applycform(a, cform);
    k = cmyk(:,:,4);
    k = [k,k,k];
    cmy = cmyk(:,:,1:3);
    cmy = normaliza(cmy);
    %LAB
    cform = makecform('srgb2lab');
    lab = applycform(a,cform);
    lab2 = normaliza(lab);
    %LCH
    cform = makecform('lab2lch');
    lch = applycform(lab,cform);
    lch = normaliza(lch);
    
    b = [rgb, hsi; cmy, k; lab2, lch];
end

