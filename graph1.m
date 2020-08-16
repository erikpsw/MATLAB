fplot(@(x) sec(x),[0,pi/12]);
grid on
text(0.05,1.025,'$\frac{\sqrt{3}}{4} \sec ^{2} \theta$','Interpreter','LaTex',"FontSize",25)
xlabel("$\theta$",'Interpreter','LaTex',"FontSize",15)
ylabel("$A$",'Interpreter','LaTex',"FontSize",15)
xticks([pi/48 pi/24 pi/16 pi/12])
xticks(0:pi/48:pi/12)
xticklabels({'0','1/48\pi','1/24\pi','1/16\pi','1/12\pi'})