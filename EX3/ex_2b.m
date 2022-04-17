%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:���ھ��������źŵ�Ƶ�׽ṹ�벨�β�����t��T��֮���ϵ���̲� P81��
%Version: 2022-4-6 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
Fs = 50;
T = 5;
t = -2*T : 0.01 : 2*T;
E = 1;
tau = 1/2;
omega = 2 * pi/T;

f_0 = square(omega .* t + omega * T / 4 ) / 2;
f_0 = f_0 .* (f_0>=0);
figure('Color', 'White', 'Position', [100 100 480 240]);
plot(t, f_0, 'LineWidth', 2);
axis([-10, 10, -0.2, 0.7]);
grid on
xlabel('Time \itt\rm');
ylabel('\itf\rm(\itt\rm)');
title('ʵ�� 3-2 ���ھ�������\itf\rm(\itt\rm)','Fontname','SimHei');
set(gca,'gridlinestyle','--','Gridalpha',0.4,'LineWidth',1.5)

n = -20:0.01:20;
Fn = tau ./ T .* sin(n .* omega * tau / 2) ./ (n .* omega * tau / 2); %P85 (3-35)
Fn = -Fn .* (Fn < 0) + Fn .* (Fn >=0);  
figure('Color', 'White', 'Position', [100 100 480 240]);
plot(n, Fn, 'LineWidth', 2);
grid on
xlabel('Frequence \bf\omega');  
ylabel('|F_n|');
title('ʵ�� 3-2 ���ھ�������Ƶ��|F_n|({\bf\omega})','Fontname','SimHei');
set(gca,'gridlinestyle','--','Gridalpha',0.4,'LineWidth',1.5)



