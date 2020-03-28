function yp = sirModel(t,y,tContact,tRecovery,N)

beta = 1/tContact;
gama = 1/tRecovery;

yp = zeros(3,1);
yp(1) = -(beta*y(2)*y(1))/N; %S (susceptible)
yp(2) = (beta*y(2)*y(1))/N - gama*y(2);%I (infected)
yp(3) = gama*y(2); %R (recovered)



end