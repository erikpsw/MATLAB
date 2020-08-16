q=1.5; %�����ȣ���Ϊ�ڶ�����ɵĵ���
xm=3.2;
ym=2.7;%��Χ
x1=1;
x2=-1;
x=linspace(-xm,xm);
y=linspace(-ym,ym);%����
[X,Y]=meshgrid(x,y);%����
r1=sqrt((X-x1).^2+Y.^2);
r2=sqrt((X-x2).^2+Y.^2);%�糡������һ�㵽(1,0)�ľ���
U=1./r1+q./r2;%�������
u=1:0.5:4;%��������������
figure
contour(x,y,U,u)
grid on
hold on
plot([-xm,xm],[0,0])%ˮƽ��
plot([0,0],[-ym,ym])%ˮƽ��
plot(x1,0,'o','MarkerSize',12)
plot(x2,0,'o','MarkerSize',12)

[Ex,Ey]=gradient(-U,x(2)-x(1),y(2)-y(1));
dth1=20;%�Ƕȼ��
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
