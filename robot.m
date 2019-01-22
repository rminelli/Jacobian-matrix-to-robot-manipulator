% Roberto de Figueiredo Minelli
% UGR - 2016
% SISTEMAS ROBÓTICOS INDUSTRIALES
%
% Cinemática de un brazo robot de 3 grados de libertad
%

%%-- Angulos en grados
function robot(q1,q2,q3)

%%-- Convertir angulos a radianes
q1= q1*pi/180;
q2= q2*pi/180;
q3= q3*pi/180;

%%-- Geometria del robot: 3 eslabones de longitudes l1, l2 y l3
l1 = 1; 
l2 = 2;
l3 = 3;

%%-- Transformadas homogeneas entre los tres sistemas de referencia

%A0 = Rotz(q1)*Trasy(l1);
%A1 = Rotx(q2)*Trasy(l2);
%A2 = Rotx(q3)*Trasy(l3);

A0 = Rotz(q1);
A1 = Rotx(q1)*Trasy(l1);
A2 = Rotx(q2)*Trasy(l2);
A3 = Rotx(q3)*Trasy(l3);

%%-- Transformada homogenea completa
T = A0*A1*A2*A3;

%%-- Coordenadas de los origenes de los sistemas de refencia
P01 = A0*A1*A2*[0 0 0 1]';
P02 = A0*A1*A2*A3*[0 0 0 1]';

%%-- Dibujar robot

x = [0 P01(1) P02(1)];
y = [0 P01(2) P02(2)];
z = [0 P01(3) P02(3)];

hold off;
plot3(x,y,z,'-o','linewidth',4);
hold on;

plot(x,y,'r');

%%-- Dibujar la pinza
pinza(T);

l = l2 + l3 + 0.5*l3;
axis([-l l -l l 0 l]);
axis('off');
view(110,30);


