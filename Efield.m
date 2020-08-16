q=1.5; %电量比，即为第二个电荷的电量
xm=3.2;
ym=2.7;%范围
x1=1;
x2=-1;
x=linspace(-xm,xm);
y=linspace(-ym,ym);%坐标
[X,Y]=meshgrid(x,y);%网格
r1=sqrt((X-x1).^2+Y.^2);
r2=sqrt((X-x2).^2+Y.^2);%电场中任意一点到(1,0)的距离
U=1./r1+q./r2;%计算电势
u=1:0.5:4;%按步长创建向量
figure
contour(x,y,U,u)
grid on
hold on
plot([-xm,xm],[0,0])%水平线
plot([0,0],[-ym,ym])%水平线
plot(x1,0,'o','MarkerSize',12)
plot(x2,0,'o','MarkerSize',12)

[Ex,Ey]=gradient(-U,x(2)-x(1),y(2)-y(1));
dth1=20;%角度间隔
th1=(dth1:dth1:180-dth1)*pi/180;
r0=0.1;
x1=r0*cos(th1)+x1;
y1=r0*sin(th1);
streamline(X,Y,Ex,Ey,x1,y1)
streamline(X,-Y,Ex,-Ey,x1,-y1)
dth2=dth1/q;
th2=(180-dth2:-dth2:dth2)*pi/180;
x2=r0*cos(th2)+x2;   
y2=r0*sin(th2);
streamline(X,Y,Ex,Ey,x2,y2)     
streamline(X,-Y,Ex,-Ey,x2,-y2)
axis equal tight
