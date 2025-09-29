n = -5:1:5;
y = cos(n*pi/4);
stem(n, y);
xlim([-6 6])
xlabel('n')
ylabel('y(n)')
title('cos(npi/4)')