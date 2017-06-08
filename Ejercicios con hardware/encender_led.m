clear all, close all, clc
%Instalar plugin de arduino
%Verificar en que puerto esta conectado
%Conectamos el arduino 
a = arduino('COM3', 'Uno');
ledPin ='D13';
writeDigitalPin(a, ledPin, 0);
writeDigitalPin(a, ledPin, 1);
writeDigitalPin(a, ledPin, 0);