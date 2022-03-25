%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出单位脉冲信号
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
t = -20 : 0.05 : 20;
sa = sinc(t/pi);  %sinc = (sin(pi*x))/(pi*x);
figure('Color','White','Position',[100 100 640 240]);
plot(t,sa,'LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Time \itt\rm');
ylabel('\itSa\rm(\itt\rm)');
