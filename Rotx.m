% Roberto de Figueiredo Minelli
% UGR - 2016
% SISTEMAS ROBÓTICOS INDUSTRIALES
% Matriz homogenea de rotacion alrededor del eje x
% Angulo a en radianes
function T = Rotx(a)

ca = cos(a);
sa = sin(a);

T = [1  0  0  0;
     0 ca -sa 0;
     0 sa ca  0;
     0 0   0  1
     ];