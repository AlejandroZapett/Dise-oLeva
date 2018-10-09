%Borrando información previa
clear all;
clc;
clf(figure(1));

%%%%Creación de la ventana gráfica de los diagramas x, v, a%%%%

%parametros del sistema:

h=3;
B=120;

%Diagrama de x
subplot(3,1,1);
title('Diagrama de desplazamiento');
xlabel('Theta [º]');
ylabel('h [mm]');
grid on;
hold on;
%subida de: 0 a h, 0 a 120º,    s se describe por C5
a=1;
for th=0:1:120;
    sx1(a) = (h)*((th/B)-(1/(2*pi))*sin(2*pi*th/B));
    x1 = th;
    s1 = sx1(a);
    plot(x1, s1, 'k*');
    a=a+1;
end
Theta1 = 0:1:120;
%reposo de: h a h, 120º a 240º, s es una linea recta
x2 = 121:1:240;
s2 = zeros(1, 120)+h;
sx2 = s2;
plot(x2, s2, 'r*');
Theta2 = x2;
%bajada de: h a 0, 240º a 360º, s se describe por C6
a=1;
for th=241:1:360;
    sx3(a) = (h)*(1-(th/B)+(1/(2*pi))*sin(2*pi*th/B))+2*h;
    x3 = th;
    s3 = sx3(a);
    plot(x3, s3, 'k*');
    a=a+1;
end
Theta3 = 241:1:360;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

X = [Theta1,Theta2,Theta3]'
Y = [sx1,s2,sx3]'

%Diagrama de v
subplot(3,1,2);
title('Diagrama de velocidad');
xlabel('Theta [º]');
ylabel('h [mm]');
grid on;
hold on;
%subida de: 0 a h, 0 a 120º,    s se describe por C5
for th=0:1:120;
    s = (h/B)*(1-cos(2*pi*th/B));
    x1 = th;
    s1 = s;
    plot(x1, s1, 'k*');
end
%reposo de: h a h, 120º a 240º, s es una linea recta
x2 = 121:1:240;
sx2 = zeros(1, 120);
plot(x2, sx2, 'r*');
%bajada de: h a 0, 240º a 360º, s se describe por C6
for th=241:1:360;
    s = -(h/B)*(1-cos(2*pi*th/B));
    x3 = th;
    s3 = s;
    plot(x3, s3, 'k*');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Diagrama de a
subplot(3,1,3);
title('Diagrama de aceleración');
xlabel('Theta [º]');
ylabel('h [mm]');
grid on;
hold on;
%subida de: 0 a h, 0 a 120º,    s se describe por C5
for th=0:1:120;
    s = ((2*h*pi)/(B*B))*(sin(2*pi*th/B));
    x1 = th;
    s1 = s;
    plot(x1, s1, 'k*');
end
%reposo de: h a h, 120º a 240º, s es una linea recta
x2 = 121:1:240;
s2 = zeros(1,120);
plot(x2, s2, 'r*');
%bajada de: h a 0, 140º a 360º, s se describe por C6
for th=241:1:360;
     s = -((2*h*pi)/(B*B))*(sin(2*pi*th/B));
    x3 = th;
    s3 = s;
    plot(x3, s3, 'k*');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


