%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  ÐÜ¿µ
%E-mail£º 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:»­³öÕýÏÒÐòÁÐ
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
n = -7 : 14;
k = length(n);
f = sin(pi/7.*n);
figure('Color','White','Position',[100 100 640 240]);
stem(n,f,'filled','LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Number \it n \rm');
ylabel('\itx\rm[\itn\rm]');