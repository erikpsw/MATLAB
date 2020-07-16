fplot(@(t) 16*sin(t)^3,@(t) 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t),[-20,20]);
axis([-25,25,-25,15])