
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
legend (('figura del caso sobre amortiguado'))
m=100;
k=10;
c=1;
cr=2*sqrt(k*m);
zeta=c/cr;
w=sqrt(k/m);

function state = derivatives(t, yo)

y=yo(1);
ydot= yo(2);

m=100;
k=10;
c=63.24;

ydotdot= -c/m*ydot - k/m*y ;

state= [ydot; ydotdot];
    
end