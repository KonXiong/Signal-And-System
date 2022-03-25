function sfxulie(sigma,omega,n0,nf)
n = n0 : nf;
r = exp(sigma.* n).* cos(omega.* n);
x = exp(sigma.* n).* sin(omega.* n);

figure('Color','White','Position',[100 100 640 240]);
plot(n,r,'b',n,x,'r','LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
% axis([-1, 11 ,-60, 60]);
% set(gca,'XTick',-0:2:10);
% set(gcb,'YTick',-60:20:60);
xlabel('Number \itn\rm');
legend('Real part \itr\rm(\itt\rm)','Image part \itx\rm(\itt\rm)');




% figure('Color','White','Position',[100 100 640 480]);
% subplot(2,1,1);
% plot(n,r,'Linewidth',2);
% set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
% % set(gca,'XTick',n0:nf);
% % set(gcb,'YTick',-60:20:60);
% xlabel('Number \itn\rm');
% ylabel('\itr\rm(\itt\rm)');
% 
% subplot(2,1,2);
% plot(n,x,'Linewidth',2);
% set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
% % set(gca,'XTick',n0:nf);
% % set(gcb,'YTick',-60:20:60);
% xlabel('Number \itn\rm');
% ylabel('\itx\rm(\itt\rm)');