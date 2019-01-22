% Roberto de Figueiredo Minelli
% UGR - 2016
% SISTEMAS ROB”TICOS INDUSTRIALES
%
% Matriz homogenea de traslaci√≥n a lo largo del eje y

function T=Trasy(l)

T = [1  0  0  0;
     0  1  0  l;
     0  0  1  0;
     0  0  0  1];
     