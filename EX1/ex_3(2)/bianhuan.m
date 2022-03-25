% t' = omega * t + sigma
function bianhuan(sigma,omega)
n1 = -1 : 0.05 : 0;
n2 = 0 : 0.05 : 2;
n3 = ones(1,5) * 2;
x1 = n1 + 1;
x2 = n2 - n2 + 1;
x3 = linspace(0,1,length(n3));
n = [n1,n2,n3];
x = [x1,x2,x3];
n = (n - sigma) / omega;
x = x;
figure('Color','White','Position',[100 100 640 240]);
plot(n,x,'Linewidth',2);
hold on
axis([-6,6,-1,1.5])

% axis on
% annotation('arrow',[0 1],[0 0]);
% annotation('arrow',[0 0],[0 1]);

Position=get(gca,'Position');
XLim=get(gca,'XLim');
YLim=get(gca,'YLim');
dy=(0-YLim(1))/(YLim(2)-YLim(1));
annotation('Arrow',[Position(1) Position(1)+Position(3)],[Position(2)+dy*Position(4) Position(2)+dy*Position(4)])
dx=(0-XLim(1))/(XLim(2)-XLim(1));
annotation('Arrow',[Position(1)+dx*Position(3) Position(1)+dx*Position(3)],[Position(2) Position(2)+Position(4)])
% axis off

