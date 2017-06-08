clear all, close all, clc
%arduino
a = arduino('COM3', 'Uno');
out1 ='D13';
out2 ='D12';
out3 ='D8';
out4 ='D7';
out5='D11';
out6='D6';
writePWMVoltage(a, out5, 3);
writePWMVoltage(a, out6, 3);
writeDigitalPin(a, out1, 1);%Adelante izquierda
writeDigitalPin(a, out2, 0);%Atras izquierda
writeDigitalPin(a, out3, 0);%Adelante derecha
writeDigitalPin(a, out4, 1);%Atras derecha
% %Adelante
% writeDigitalPin(a, out1, 1);%Adelante izquierda
% writeDigitalPin(a, out2, 0);%Atras izquierda
% writeDigitalPin(a, out3, 0);%Adelante derecha
% writeDigitalPin(a, out4, 1);%Atras derecha
% pause(4);
% %Quieto
% writeDigitalPin(a, out1, 0);%Adelante izquierda
% writeDigitalPin(a, out2, 0);%Atras izquierda
% writeDigitalPin(a, out3, 0);%Adelante derecha
% writeDigitalPin(a, out4, 0);%Atras derecha
% pause(4);
% %Derecha
% writeDigitalPin(a, out1, 1);%Adelante izquierda
% writeDigitalPin(a, out2, 0);%Atras izquierda
% writeDigitalPin(a, out3, 0);%Adelante derecha
% writeDigitalPin(a, out4, 0);%Atras derecha
% pause(4);
% %Izquierda
% writeDigitalPin(a, out1, 0);%Adelante izquierda
% writeDigitalPin(a, out2, 0);%Atras izquierda
% writeDigitalPin(a, out3, 1);%Adelante derecha
% writeDigitalPin(a, out4, 0);%Atras derecha
% pause(4);
% %Pare 
% writeDigitalPin(a, out1, 0);%Adelante izquierda
% writeDigitalPin(a, out2, 0);%Atras izquierda
% writeDigitalPin(a, out3, 0);%Adelante derecha
% writeDigitalPin(a, out4, 0);%Atras derecha