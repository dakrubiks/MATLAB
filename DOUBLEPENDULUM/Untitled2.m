clear all
close all
clc


tspan = 0:0.001:10;

z0 = [0 pi/2 0 0];

m1 = 2;
m2 = 2;
L1 =1;
L2=1;
g=9.8;

[t,y] = ode45(@(t,z) db_pendulum(t,z,m1,m2,L1,L2,g), tspan, z0);


theta1 = y(:,1);
theta2 = y(:,2);
xm1 = L1*sin(theta1);
ym1 = -L1*cos(theta1);
xm2 = xm1 + L2*sin(theta2);
ym2 = ym1 - L2*cos(theta2);

subplot(1,2,1)
plot(xm2,ym2)

subplot(1,2,2)
plot(theta1,theta2)

% for i=1:length(t)
% 
%     figure(1)
%     plot(xm1(i),ym1(i),'o',xm2(i),ym2(i),'o')
%     xlim([min(min(xm1),min(xm2)) max(max(xm1),max(xm2))])
%     ylim([min(min(ym1),min(ym2)) max(max(ym1),max(ym2))])
%     title(num2str(t(i)))
%     drawnow
% 
% end