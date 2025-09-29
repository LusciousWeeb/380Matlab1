[y, fs] = audioread('original-clip.wav');

plot((1:1:length(y))/fs,y);
xlabel('t(s)')
ylabel('y')
title('Plot of original-clip.wav')

%According to audioinfo the audio clip is 9.06 seconds long