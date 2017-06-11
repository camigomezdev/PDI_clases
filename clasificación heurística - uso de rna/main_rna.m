clear all, close all, clc
% Se carga la red neuronal entrenada en la clase entrenamiento_RNA.m
load('red.mat');
% se carga un valor random de la base de datos de muestras para probarlo con la RNA
x=irisInputs(:,120);
% Se evalúa ese valor X en la red neuronal y se verifica la clasificación
% que esta genera sobre la muestra elegida
y=net(x)
