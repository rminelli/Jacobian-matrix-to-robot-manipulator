% Roberto de Figueiredo Minelli
% UGR - 2016
% SISTEMAS ROBÓTICOS INDUSTRIALES    
%  Matriz homogenea de rotacion alrededor del eje z
%  Angulo a en radianes
function T = Rotz(a)

ca = cos(a);
sa = sin(a);

T = [ ca -sa  0  0;
      sa  ca  0  0;
      0  0    1  0;
      0  0    0  1];