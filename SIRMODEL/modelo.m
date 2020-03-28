clc
clear all
close all


tContact = 6;
tRecovery = 26;

tspan =[0 300];
y0 = [997;3;0];

N = sum(y0);

[t,y] = ode45(@(t,y) sirModel(t,y,tContact,tRecovery,N),tspan,y0);

plot(t,y(:,1),'-o',t,y(:,2),'-.',t,y(:,3))
legend('susceptible','infected','recovered')