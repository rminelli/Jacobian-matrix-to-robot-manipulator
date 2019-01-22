function Jacobiano(hObject, eventdata, handles)

teta1  l1 l2 l3  

 teta1 = sym('teta1');
 teta4 = sym('teta4');
 teta5 = sym('teta5');
 teta6 = sym('teta6');
 l1= sym('l1');
 l2= sym('12');
 l3= sym('13');

 
 
 T01=[cos(teta1),-sin(teta1),0,0;
     sin(teta1),cos(teta1),0,0;
     0,0,1,0;
     0,0,0,1];
 
 
 T02=[cos(teta1),-sin(teta1),0,0;
     sin(teta1),cos(teta1),0,0;
     0,0,1,0;
     0,0,0,1];
 
 T13=[1,0,0,0;
     0,1,0,0;
     0,0,1,d2;
     0,0,0,1];
 
 
 T06=T01*T12*T23;


 Px=sin(teta1)*d4+cos(teta1)*l1+sin(teta1)*d3;
 Py=-cos(teta1)*d4+sin(teta1)*l1-cos(teta1)*d3;
 Pz=d2;


 teta1=0;
 d2=100;
 d3=100;
 d4=20;
 l1=80;

J11=d4*cos(teta1)-l1*sin(teta1)+d3*cos(teta1);
J12=0;
J13=sin(teta1);


J21=4*sin(teta1)+l1*cos(teta1)+d3*sin(teta1);
J22=0;
J23=-cos(teta1);

J31=0;
J32=1;
J33=0;


J=[J11,J12,J13;
   J21,J22,J23;
   J31,J32,J33];

