clear all, close all, clc

load('red.mat');

x=irisInputs(:,120);
y=net(x)
