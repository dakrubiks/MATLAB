function dx = db_pendulum(t,z,m1,m2,L1,L2,g)



theta1 = z(1);
theta2 = z(2);
omega1 = z(3);
omega2 = z(4);

dtheta1 = omega1;
dtheta2 = omega2;

domega1 = (-g*(2*m1+m2)*sin(theta1)-m2*g*sin(theta1-2*theta2)-...
    2*sin(theta1-theta2)*m2*(omega2^2*L2+omega1^2*L1*cos(theta1-theta2)))...
    /(L1*(2*m1+m2-m2*cos(2*theta1-2*theta2)));

domega2 = (2*sin(theta1-theta2)*(omega1^2*L1*(m1+m2)+...
    g*(m1+m2)*cos(theta1)+omega2^2*L2*m2*cos(theta1-theta2)))...
    /(L2*(2*m1+m2-m2*cos(2*theta1-2*theta2)));

dx = [dtheta1;dtheta2;domega1;domega2];

end