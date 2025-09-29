[y, fs] = audioread('original-clip.wav');

w3 = upsample(y, 2);
w4 = downsample(y , 3);

figure
plot(w3);
title('w3')
xlabel('t(s)');
ylabel('y')
%from the graph, w3 seems to be around 18.1 seconds

figure
plot(w4,'r');
title('w4')
xlabel('t(s)');
ylabel('y');
%from the graph, w4 seems to be around 3.02 seconds long

%w3 is a lot slower compared to normal and pitch shifted down
%w4 is a lot faster compared to normal and pitch shifted up

audiowrite('w3.wav', w3,fs);
audiowrite('w4.wav', w4,fs);