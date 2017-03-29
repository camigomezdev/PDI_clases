function c=c_componentes_color(a);

%-------------------------------------------------------------------------
%----------------- Extrae las principales componentes --------------------
%------------------porentaje según se indique en las ---------------------
%----------------- variables:                        ---------------------
%-----------------  a= imagen de entrada             ---------------------
%-----------------  c= imagen de salida              ---------------------
%-----------------  se devuelve el máximo de b,y y c ---------------------
%-------------------------------------------------------------------------


%----------------------------------------------------------------------
%----------------- Extraen componentes de color -----------------------
%----------------------------------------------------------------------

%      'lab2lch'   'lch2lab'   'upvpl2xyz'   'xyz2upvpl'
%         'uvl2xyz'   'xyz2uvl'   'xyl2xyz'     'xyz2xyl'
%         'xyz2lab'   'lab2xyz'   'srgb2xyz'    'xyz2srgb'
%         'srgb2lab'  'lab2srgb'  'srgb2cmyk'   'cmyk2srgb'
        
    [fil,col,cap]=size(a);              % datos base de la imagen
    
    cform=makecform('srgb2lab');         % convertir rgb a lab
    a1=applycform(a,cform); 
    a11=a1;
    a1=double(a1); a1=a1/max(a1(:))*255;
    a1=uint8(a1);
    
%     cform=makecform('srgb2xyz');
%     a2=applycform(a,cform); a22=a2;
%     a2=double(a2); a2=a2/max(a2(:))*255;
%     a2=uint8(a2);
    
    cform=makecform('srgb2cmyk');           % convertir rgb a cmyk
    a3=applycform(a,cform); a33=a3;
    a3=double(a3); a3=a3/max(a3(:))*255;
    a3=uint8(a3);
    
%     cform=makecform('lab2lch');
%     a4=applycform(a11,cform); a44=a4;
%     a4=double(a4); a4=a4/max(a4(:))*255;
%     a4=uint8(a4);
    
%     cform=makecform('xyz2uvl');
%     a5=applycform(a22,cform); a55=a5;
%     a5=double(a5); a5=a5/max(a5(:))*255;
%     a5=uint8(a5);
    
    a8=rgb2hsv(a);                  % convertir rgb a rgb
    a88=a8;
    a8=double(a8); a8=a8/max(a8(:))*255;
    a8=uint8(a8);    
    
    [fil,col,cap]=size(a);
    
    a1=reshape(a1,[fil,col*cap]); %lab
%     a2=reshape(a2,[fil,col*cap]); %xyz
    a3=reshape(a3,[fil,col*(cap+1)]); %cmyk 
%     a7=a3(:,(col*3)+1:col*4); a7=[a7,a7,a7]; %k de cmyk
%     a4=reshape(a4,[fil,col*cap]); %lch
%     a5=reshape(a5,[fil,col*cap]); %uvl
    a6=a3(:,1:col*3); %cmy
    a8=reshape(a8,[fil,col*cap]); %hsv
%     a9=reshape(a,[fil,col*cap]); %rgb
    
%      figure(1); imshow([a1,a2;a6,a7;a4,a5;a8,a9]); 
%      title(['lab-xyz  cmy-k  lch-uvl  hsv-rgb']);
%      pause;
% 
     b=a1(:,(col*2+1):col*3);
     y=a6(:,(col*2+1):col*3);
     s=a8(:,(col+1):col*2);
%    bb=a9(:,(col*2+1):col*3); bb=255-bb;
%    figure(1); imshow([b,y;s,bb]); 
%    title(['b-y s-bb']); impixelinfo
    c=max(b,y);c=max(c,s);
    c=reshape([c,c,c],[fil,col,cap]);  % devuelve el máximo
%     figure(1); imshow(c); impixelinfo
%     pause;  
%     close all
    
