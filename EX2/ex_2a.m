%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:����impz����������λ��ֵ��Ӧ��ͼ��
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;clc;
D_c = [1 -3 3 -1];
N_c = 1;

figure('Color', 'White', 'Position', [100 100 640 240]);
impz(N_c, D_c);
axis([-1, 10, 0, 60]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
% set(gca, 'XTick', -0 : 1 : 6);
% set(gca, 'YTick', -0 : 0.2 : 1.4);

n = 0: 1: 9;
y = n.^2 /2 + 3.*n /2 + 1;
hold on
plot(n, y, '*');
xlabel('Time \itt\rm');
ylabel('\itg\rm(\itt\rm)');
% title('ʵ�� 2-1(b) LTI ϵͳ\ity"\rm(\itt\rm)+3\ity\rm''(\itt\rm)+2\ity\rm(\itt\rm)=\itx\rm''(\itt\rm)/2+2\itx\rm(\itt\rm)�ĵ�λ��Ծ��Ӧ');
legend('Function Solve','Equation Solve');