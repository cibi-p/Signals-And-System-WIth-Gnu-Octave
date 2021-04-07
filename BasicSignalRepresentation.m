%Basic Signal Representation
%UnitStep Signal
t=-5:0.1:5;
subplot(2,3,1);
unitstep=[zeros(1,50) ones(1,51)];
plot(t,unitstep);
axis([-5 5 -2 2]);
xlabel("time");ylabel("amplitude");
title("Unit Step Signal");
%unitimpulse Signal
subplot(2,3,2);
unitimpulse=[zeros(1,50) 1 zeros(1,50)];
plot(t,unitimpulse);
axis([-5 5 -2 2])
xlabel("time");ylabel("amplitude");
title("Unit Impulse Signal");
%Ramp Signal
subplot(2,3,3);
ramp=t;
plot(t,ramp);
axis([-5 5 -5 5])
xlabel("time");ylabel("amplitude");
title("Ramp Signal");
%-------------Square Signal-------
pkg load signal
f=1; fs=10; t1=-5:1/fs:5;
v1=square(2*pi*f*t1);
subplot(2,3,4);
plot(t1,v1);
axis([-5 5 -2 2])
xlabel('time in second');
ylabel('amplitude');
title('Square Wave');
%------------Sinusoidal Signal------
subplot(2,3,5);
v2=sin(2*pi*f*t1);
plot(t1,v2);
axis([-5 5 -2 2])         
xlabel('time in second'); 
ylabel('amplitude');
title('Sinusoidal Wave');
%exponential Signal
subplot(2,3,6);
plot(t,5*exp(-2*t));
axis([0 3 0 5]);
xlabel('time in second');
ylabel('amplitude');
title('Exponential signal');
