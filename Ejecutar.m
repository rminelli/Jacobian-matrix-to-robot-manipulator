% Roberto de Figueiredo Minelli
% UGR - 2016
% SISTEMAS ROB�TICOS INDUSTRIALES
close all
clear all
clc
%Ejecutar con la posici�n del manipulador
for z = 3:1.5:4
  robot_inv(0,1,z);
  pause(0.01);
end;

