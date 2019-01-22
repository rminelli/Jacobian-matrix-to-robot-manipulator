% Roberto de Figueiredo Minelli
% UGR - 2016
% SISTEMAS ROBÓTICOS INDUSTRIALES
% Cinemática Inversa

function [q1,q2,q3]=robot_inv(x,y,z)

%-- Geometria del robot
l1 = 1;
l2 = 2;
l3 = 3;

M = (x^2 + y^2 - l3^2 - l2^2)/(2*l2*l3);
q3 = z - l1;
q2 = atan(sqrt(1-M^2)/M) + atan(-sqrt(1-M^2)/M);
q1 = atan2(y,x);

%-- Pasar a grados
q3 = q3*180/pi;
q2 = q2*180/pi;
q1 = q1*180/pi;

robot(q1,q2,q3);
axis('on');
grid on
box off

