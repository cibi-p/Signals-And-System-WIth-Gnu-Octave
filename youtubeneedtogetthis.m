t=-2:0.01:5;
subplot(1,2,1);
plot(t,sin(2*pi*t));
axis([ 0 5 -2 2]);
xlabel("time");
ylabel("amplitude");
title("sine wave");


subplot(1,2,2);
y=[zeros(1,200),1,zeros(1,500)];
plot(t,y);
axis([ -2 2 -2 2]);
xlabel("time");
ylabel("amplitude");
title("impulse signal");