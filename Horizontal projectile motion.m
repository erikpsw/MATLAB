
v0=1;
fplot(@(t)v0.*t,@(t)-0.5.*10*t^2+100,[0,4]);
title('ƽ��')
xlabel('ˮƽ')
text(0,100,'��ʼ')
axis([0,5,20,130])
grid on