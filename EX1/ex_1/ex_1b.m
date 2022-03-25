%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出复指数函数的实部和虚部
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
sigma = 0.4;
omega = 8;
t = 0 : 0.05 : 10;
r = exp(sigma.* t).* cos(omega.* t);  %取实数
x = exp(sigma.* t).* sin(omega.* t);  %取虚数

figure('Color','White','Position',[100 100 640 240]);
plot(t,r,'b',t,x,'r','LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
axis([-1, 11 ,-60, 60]);
set(gca,'XTick',-0:2:10);
set(gcb,'YTick',-60:20:60);
xlabel('Time \itt\rm');
legend('Real part \itr\rm(\itt\rm)','Image part \itx\rm(\itt\rm)');
% legend('Real part \itr\rm(\itt\rm)','Image part \itx\rm(\itt\rm)',3);
title('Experiment 1-1(b) \itf\rm(\itt\rm)=e^{(0.4+j0.8)\itt\rm}=\itr\rm(\itt\rm)+j\itx\rm(\itt\rm)');


figure('Color','White','Position',[100 100 640 480]);
subplot(2,1,1);
plot(t,r,'Linewidth',2);
axis([-1,11,-60,60]);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
set(gca,'XTick',-0:2:10);
set(gcb,'YTick',-60:20:60);
xlabel('Time \itt\rm');
ylabel('\itr\rm(\itt\rm)');
title('Experiment 1-1(b) \itf\rm(\itt\rm)=e^{(0.4+j0.8)\itt\rm}=\itr\rm(\itt\rm)+j\itx\rm(\itt\rm)');
subplot(2,1,2);
plot(t,x,'Linewidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
axis([-1,11,-60,60]);
set(gca,'XTick',-0:2:10);
set(gcb,'YTick',-60:20:60);
xlabel('Time \itt\rm');
ylabel('\itx\rm(\itt\rm)');