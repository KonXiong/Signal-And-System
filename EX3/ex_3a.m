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
n2 = -20:1:20;
Fn = E * tau ./ T .* sinc(n .* omega * tau/2/pi); %P85 (3-35)
Fn = -Fn .* (Fn < 0) + Fn .* (Fn >=0);  
Fn2 = E * tau ./ T .* sinc(n2 .* omega * tau/2/pi); %P85 (3-35)
Fn2 = -Fn2 .* (Fn2 < 0) + Fn2 .* (Fn2 >=0);
figure('Color', 'White', 'Position', [100 100 480 240]);
stem(n2, Fn2,'filled','LineWidth',1.5); 
hold on
plot(n, Fn, 'LineWidth', 2);
grid on
xlabel(['\omega/\omega_0,\omega_0=',int2str(omega)]);   
ylabel('|F_n|');
title('思考题 周期矩形脉冲频谱|F_n|({\bf\omega})','Fontname','SimHei');
set(gca,'gridlinestyle','--','Gridalpha',0.4,'LineWidth',1.5)


