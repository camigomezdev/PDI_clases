clear all, close all, clc
%arduino
a = arduino('COM3', 'Uno');
ledPin ='D13';
writeDigitalPin(a, ledPin, 0);
writeDigitalPin(a, ledPin, 1);
writeDigitalPin(a, ledPin, 0);