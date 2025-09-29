[y, fs] = audioread('original-clip.wav');

delay = 0.5;
scale = 0.5;
delayed_sample = round(delay * fs);
echos = 3;

y_echo = zeros(length(y) + echos*delayed_sample, size(y,2));
y_echo(1:length(y), :) = y;

%for loop that does the same thing as A1_10 but just does it multiple times
%with progressively smaller amps
for i = 1:echos
    echo_scale = scale^i;
    starting = 1+i*delayed_sample;
    ending = length(y) + i*delayed_sample;

    y_echo(starting:ending, :) = ...
        y_echo(starting:ending, :) + echo_scale * y;
end

y_echo = y_echo/max(abs(y_echo));

sound(y_echo)

audiowrite('echo_multiple.wav', y, fs)