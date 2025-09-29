[y, fs] = audioread('original-clip.wav');

%fs indicates the sample rate for an audio file
%in this case fs would be 8000, as the sample rate for audio file was 8kHz

audioinfo('original-clip.wav')
%Duration = 9.0557
%Bits Per Sample = 8