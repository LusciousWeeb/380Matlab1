compress_t = -2:0.1:2;
t = -6:0.1:6;
y1 = Compress_cos(compress_t);
y2 = cos(t);

figure;
plot(y1, 'r');
hold on;
plot(y2, 'b');
legend('Compress Cos', 'Cos')
title('Compressed Cos v Cos')
xlabel('t')
ylabel('y(t)')
