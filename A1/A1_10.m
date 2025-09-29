[y, fs] = audioread('original-clip.wav');

delay = 0.5;
scale = 0.5;
delayed_sample = round(delay * fs);

% delayed the audio file by 0.5 seconds and scaled by 0.5 then added that
% back into the original as an echo.
y_echo(1:length(y), :) = y;
y_echo(1+delayed_sample : delayed_sample+length(y), :) = ...
    y_echo(1+delayed_sample : delayed_sample+length(y), :) + scale * y;

y_echo = y_echo/max(abs(y_echo));

sound(y_echo)

audiowrite('echo_single.wav', y, fs)