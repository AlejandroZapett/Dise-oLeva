%Borrando información previa
clear all;
clc;
clf(figure(1));

%%%%Creación de la ventana gráfica de los diagramas x, v, a%%%%

%parametros del sistema:

h=10;

th0 = 0;
th1 = 120;
th2 = 240;
th3 = 360;

B1=th1-th0;
B3=th3-th2;

%Diagrama de x
subplot(3,1,1);
title('Diagrama de desplazamiento');
xlabel('Theta [º]');
ylabel('h [mm]');
grid on;
hold on;
%subida de: 0 a h, 0 a 120º,    s se describe por C5
for th=th0:1:th1;
    s = (h)*((th/B1)-(1/(2*pi))*sin(2*pi*th/B1));
    x1 = th;
    s1 = s;
    plot(x1, s1, 'k*');
end
%reposo de: h a h, 120º a 240º, s es una linea recta
x2 = th1+1:1:th2;
s2 = zeros(th1,th2)+h;
plot(x2, s2, 'r*');
%bajada de: h a 0, 140º a 360º, s se describe por C6
for th=th2+1:1:th3;
    s = (h)*(1-(th/B3)+(1/(2*pi))*sin(2*pi*th/B3));
    x3 = th;
    s3 = s+2*h;
    plot(x3, s3, 'k*');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Diagrama de v
subplot(3,1,2);
title('Diagrama de velocidad');
xlabel('Theta [º]');
ylabel('h [mm]');
grid on;
hold on;
%subida de: 0 a h, 0 a 120º,    s se describe por C5
for th=th0:1:th1;
    s = (h/B1)*(1-cos(2*pi*th/B1));
    x1 = th;
    s1 = s;
    plot(x1, s1, 'k*');
end
%reposo de: h a h, 120º a 240º, s es una linea recta
x2 = th1+1:1:th2;
s2 = zeros(th1,th2);
plot(x2, s2, 'r*');
%bajada de: h a 0, 140º a 360º, s se describe por C6
for th=th2+1:1:th3;
    s = -(h/B1)*(1-cos(2*pi*th/B1));
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
for th=th0:1:th1;
    s = ((2*h*pi)/(B1*B1))*(sin(2*pi*th/B1));
    x1 = th;
    s1 = s;
    plot(x1, s1, 'k*');
end
%reposo de: h a h, 120º a 240º, s es una linea recta
x2 = th1+1:1:th2;
s2 = zeros(th1,th2);
plot(x2, s2, 'r*');
%bajada de: h a 0, 140º a 360º, s se describe por C6
for th=th2+1:1:th3;
     s = -((2*h*pi)/(B1*B1))*(sin(2*pi*th/B1));
    x3 = th;
    s3 = s;
    plot(x3, s3, 'k*');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%