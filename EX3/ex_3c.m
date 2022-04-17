%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:思考题3
%Version: 2022-4-6 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
sum = 0;
E = 1;
f = 2000;
T = 1 / f;
t = -2*T : 4*T/1000 : 2*T;
n = 8;
tau = T/2;
omega = 2 * pi/T;

figure('Color', 'White', 'Position', [50 50 960 690]);
subplot(4, 2, 1);
f_0 = E * tau / T * (t./t);
plot(t, f_0, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Time \itt\rm')
ylabel(['\itf\rm_{', int2str(0), '}(\itt\rm)']);
title(['方波的直谐分量'],'Fontname','SimHei');

for k = 1 : 7
 Fn = (2 * E * tau / T) * sinc((k) * omega * tau / (2 * pi)); %P88
 f_n = Fn * cos((k) * omega * t); %P79 (3-29)
 subplot(4, 2, k+1);
 plot(t, f_n, 'LineWidth', 2);
 set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
 xlabel('Time \itt\rm')
 ylabel(['\itf\rm_{', int2str(k), '}(\itt\rm)']);
 title(['方波的', int2str(k),'次谐波'],'Fontname','SimHei');
end