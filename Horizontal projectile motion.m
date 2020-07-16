
v0=1;
fplot(@(t)v0.*t,@(t)-0.5.*10*t^2+100,[0,4]);
title('平抛')
xlabel('水平')
text(0,100,'初始')
axis([0,5,20,130])
grid on