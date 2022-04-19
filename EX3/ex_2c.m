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
T = 2*5;
t = -2*T : 0.01 : 2*T;
E = 1;
tau = 1;
omega = 2 * pi/T;

f_0 = E * square(omega .* t + omega * T * tau/T/2, 100*tau/T);
f_0 = f_0 .* (f_0>=0);
figure('Color', 'White', 'Position', [100 100 480 240]);
plot(t, f_0, 'LineWidth', 2);
axis([-T, T, min((f_0)-0.1), max((f_0)+0.1)]);
grid on
xlabel('Time \itt\rm');
ylabel('\itf\rm(\itt\rm)');
title('ʵ�� 3-2 ���ھ�������\itf\rm(\itt\rm)','Fontname','SimHei');
set(gca,'gridlinestyle','--','Gridalpha',0.4,'LineWidth',1.5)

n = -20:0.001:20;
n2 = -20:2:20;
Fn = E * tau ./ T .* sinc(n .* omega * tau/2/pi); %P85 (3-35)
Fn = -Fn .* (Fn < 0) + Fn .* (Fn >=0);  
Fn2 = E * tau ./ T .* sinc(n2 .* omega * tau/2/pi); %P85 (3-35)
Fn2 = -Fn2 .* (Fn2 < 0) + Fn2 .* (Fn2 >=0);
figure('Color', 'White', 'Position', [100 100 480 240]);
stem(n2, Fn2,'filled','LineWidth',1.5); 
hold on
plot(n, Fn,'--', 'LineWidth', 2);
grid on
xlabel(['\omega/\omega_0,\omega_0=',num2str(omega,3)]);  
ylabel('|F_n|');
title('ʵ�� 3-2 ���ھ�������Ƶ��|F_n|({\bf\omega})','Fontname','SimHei');
set(gca,'gridlinestyle','--','Gridalpha',0.4,'LineWidth',1.5)


