%Basic Signal Representation
%UnitStep Signal
t=-5:0.2:5;
subplot(2,3,1);
unitstep=[zeros(1,25) ones(1,26)];
stem(t,unitstep);
axis([-5 5 -2 2]);
xlabel("time");ylabel("amplitude");
title("Unit Step Signal");
%unitimpulse Signal
subplot(2,3,2);
unitimpulse=[zeros(1,25) 1 zeros(1,25)];
stem(t,unitimpulse);
axis([-5 5 -2 2])
xlabel("time");ylabel("amplitude");
title("Unit Impulse Signal");
%Ramp Signal
subplot(2,3,3);
ramp=t;
stem(t,ramp);
axis([-5 5 -5 5])
xlabel("time");ylabel("amplitude");
title("Ramp Signal");
%-------------Square Signal-------
pkg load signal;
f=1; fs=20; t1=-5:1/fs:5;
v1=square(2*pi*f*t1);
subplot(2,3,4);
stem(t1,v1);
axis([0 2 -2 2])
xlabel('time in second');
ylabel('amplitude');
title('Square Wave');
%------------Sinusoidal Signal------
subplot(2,3,5);
v2=sin(2*pi*f*t1);
stem(t1,v2);
axis([0 2 -2 2])         
xlabel('time in second'); 
ylabel('amplitude');
title('Sinusoidal Wave');
%exponential Signal
subplot(2,3,6);
stem(t,5*exp(-2*t));
axis([0 3 0 5]);
xlabel('time in second');
ylabel('amplitude');
title('Exponential signal');