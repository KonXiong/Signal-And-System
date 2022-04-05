%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:利用impulse函数画出LTI系统冲激响应的波形
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;clc;
sys = tf([1, -1],[1, 4, 3]);
figure('Color', 'White', 'Position', [100 100 640 380]);
impulse(sys);
t = 0: 0.1: 6;
y = (2.*exp(-3*t)-exp(-t)).*(t>=0);
hold on
plot(t, y);

axis([-0.1, 6.1, -0.8, 1.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', -0 : 1 : 6);
set(gca, 'YTick', -0.5 : 0.2 : 1);

xlabel('Time \itt\rm');
ylabel('\itg\rm(\itt\rm)');
legend('Function Solve','Equation Solve');