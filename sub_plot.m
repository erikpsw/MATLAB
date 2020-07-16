x=linspace(0,2*pi,60);
subplot(2,2,1)
fplot(@(x) sin(x),[0,2*pi]);
grid on
subplot(2,2,2)
fplot(@(x) tan(x),[0,2*pi]);
grid on
subplot(2,2,3)
fplot(@(x) sec(x),[0,2*pi]);
grid on
xlabel('sec')
subplot(2,2,4)
fplot(@(x) csc(x),[-2*pi,2*pi]);
axis([-2*pi,2*pi,-15,15])
grid on
xlabel('csc')

