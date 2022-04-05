%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:����step��������LTIϵͳ�Ľ�Ծ��Ӧ�Ĳ���
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;clc;
D_c = [1 3 2];
N_c = [3 2];
figure('Color', 'White', 'Position', [100 100 640 380]');
step(N_c, D_c);
t = 0: 0.1: 6;
y = ((-2).*exp(-2*t)+exp(-t)+1).*(t>=0);
hold on 
plot(t, y)
axis([-0.1, 6.1, -0.1, 1.3]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', -0 : 1 : 6);
set(gca, 'YTick', -0 : 0.2 : 1.4);
xlabel('Time \itt\rm');
ylabel('\itg\rm(\itt\rm)');
title('Step response');
legend('Function Solve','Equation Solve');