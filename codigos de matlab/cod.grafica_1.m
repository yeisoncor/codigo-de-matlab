clc
clear all
close all

yo = [5;0];
t = [0 1000];

[TOUT,YOUT] = ode45(@derivatives,t,yo);

figure();
plot(TOUT,YOUT(:,1))
xlabel('eje (x)')
ylabel('eje (y)')
grid on
legend (('figura del caso subamortiguado'))
function state = derivatives(t, yo)

y=yo(1);
ydot= yo(2);

m=1000;
k=100;
c=10;

ydotdot= -c/m*ydot - k/m*y ;

state= [ydot; ydotdot];
    
end

