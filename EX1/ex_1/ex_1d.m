%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  ÐÜ¿µ
%E-mail£º 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:»­³öµ¥Î»Âö³åÐÅºÅ
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
t = 0 : 0.001 : 10;
y = 1/2 + 1/2 .* sign(t-3); %sign·ûºÅº¯Êý
figure('Color','White','Position',[100 100 640 240]);
plot(t,y,'LineWidth',2);
axis([0,10,-2,2]);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Time \itt\rm');