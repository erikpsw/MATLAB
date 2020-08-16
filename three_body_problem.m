% date
m1=rand() *10^23;
m2=rand() *10^23;
m3=rand() *10^23;
colordef black

pos1=[rand() *10^7,rand() *10^7,rand() *10^7];
pos2=[rand() *10^7,rand() *10^7,rand() *10^7];
pos3=[rand() *10^7,rand() *10^7,rand() *10^7];

v1=[rand() *10^3,rand() *10^3,rand() *10^3];
v2=[rand() *10^3,rand() *10^3,rand() *10^3];
v3=[rand() *10^3,rand() *10^3,rand() *10^3];

G=6.67*10^-11;
dt=0.1;
figure
grid on 
axis equal
view(3)
hold on

% plot3ªÊ÷∆3dÕºœÒ
planet1=plot3(pos1(1),pos1(2),pos1(3),'b : .','markersize',20);
planet2=plot3(pos2(1),pos2(2),pos2(3),'r : .','markersize',20);
planet3=plot3(pos3(1),pos3(2),pos3(3),'y : .','markersize',20);

h1=animatedline('color','b');
h2=animatedline('color','r');
h3=animatedline('color','y');

xlabel('X')
ylabel('Y')
zlabel('Z')

frame=0;

while true
%     æ‡¿Î¥Û–°
    r12=normest(pos2-pos1);  
    r23=normest(pos3-pos2);  
    r13=normest(pos3-pos1);  
    
    F12=G*m1*m2/(r12^2);
    F23=G*m3*m2/(r23^2);
    F13=G*m1*m3/(r13^2);
    
    F12_dir=(pos2-pos1)/normest(pos2-pos1);  
    F23_dir=(pos3-pos2)/normest(pos3-pos2);  
    F13_dir=(pos3-pos1)/normest(pos3-pos1);
    
    a1=((F12)*F12_dir+(F13)*F13_dir)/m1;
    a2=((-F12)*F12_dir+(F23)*F23_dir)/m2;
    a3=((-F23)*F23_dir+(-F13)*F13_dir)/m3;
    
    pos1=pos1+v1*dt+0.5*a1*dt^2;
    pos2=pos2+v2*dt+0.5*a2*dt^2;
    pos3=pos3+v3*dt+0.5*a3*dt^2;
    
    v1=v1+a1*dt;
    v2=v2+a2*dt;
    v3=v3+a3*dt;
    
    frame=frame+1;
    if frame==100
        frame=0;
        
        set(planet1,'Xdata',pos1(1),'Ydata',pos1(2),'Zdata',pos1(3))
        set(planet2,'Xdata',pos2(1),'Ydata',pos2(2),'Zdata',pos2(3))
        set(planet3,'Xdata',pos3(1),'Ydata',pos3(2),'Zdata',pos3(3))
        
        addpoints(h1,pos1(1),pos1(2),pos1(3))
        addpoints(h2,pos2(1),pos2(2),pos2(3))
        addpoints(h3,pos3(1),pos3(2),pos3(3))
        drawnow
    end
    if r12==0 || r23==0 || r13==0
        break
    end
end