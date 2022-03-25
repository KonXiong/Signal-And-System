%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:利用step函数画出LTI系统的阶跃响应的波形
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;clc;
D_c = [1 3 2];
N_c = [3 2];
figure('Color', 'White', 'Position', [100 100 640 240], 'MenuBar', 'None');
step(N_c, D_c);
axis([-0.1, 6.1, -0.1, 1.3]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', -0 : 1 : 6);
set(gca, 'YTick', -0 : 0.2 : 1.4);
xlabel('Time \itt\rm');
ylabel('\itg\rm(\itt\rm)');
title('实验 2-1(b) LTI 系统\ity"\rm(\itt\rm)+3\ity\rm''(\itt\rm)+2\ity\rm(\itt\rm)=\itx\rm''(\itt\rm)/2+2\itx\rm(\itt\rm)的单位阶跃响应');
