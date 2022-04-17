%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:思考题1
%Version: 2022-4-6 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
f = 5000;
T = 1/f;
t = -2*T : 0.01 : 2*T;
E = 1;
tau = T/4;
omega = 2 * pi/T;

n = -20:0.01:20;
Fn = tau ./ T .* sin(n .* omega * tau / 2) ./ (n .* omega * tau / 2); %P85 (3-35)
Fn = -Fn .* (Fn < 0) + Fn .* (Fn >=0);  
figure('Color', 'White', 'Position', [100 100 480 240]);
plot(n, Fn, 'LineWidth', 2);
grid on
xlabel('Frequence \bf\omega');  
ylabel('|F_n|');
title('思考题 周期矩形脉冲频谱|F_n|({\bf\omega})','Fontname','SimHei');
set(gca,'gridlinestyle','--','Gridalpha',0.4,'LineWidth',1.5)


