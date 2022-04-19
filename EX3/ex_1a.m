%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出对称方波(取 E = 1、T = 1)，并采用有限项傅里叶级数对原函数进行逼
%         近，画出对称方波的 1、3、5、7、9、11 次谐波的傅里叶级数合成波形，观察吉
%         布斯现象。
%Version: 2022-4-6 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
sum = 0;
t = -3 : 0.01 : 3;
E = 1;
T = 1;
tau = T/2;
omega = 2 * pi/T;
Sum = 0;
f_0 = square(omega .* t + pi /2 ) / 2;  %t(0~Π)=1,t(Π~2Π)=0，……
figure('Color', 'White', 'Position', [100 100 480 240]);
plot(t, f_0, 'LineWidth', 2);
axis([-3.5, 3.5, -1, 1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', -3 : 1 : 3)
set(gca, 'YTick', -1 : 0.5 : 1);
xlabel('Time \itt\rm');
ylabel('\itf\rm(\itt\rm)');
title('实验 3-1 对称方波\itf\rm(\itt\rm)','Fontname','SimHei');
figure('Color', 'White', 'Position', [50 50 960 690]);
for k = 1 : 6
 Fn = (2 * E * tau / T) * sinc((2 * k - 1) * omega * tau / (2 * pi)); %P88
 f_n = Fn * cos((2 * k - 1) * omega * t); %P79 (3-29)
 Sum = Sum + f_n ;
 subplot(3, 2, k);
 plot(t, Sum, 'LineWidth', 2);
 axis([-3.5, 3.5, -1, 1]);
 set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
 set(gca, 'XTick', -3 : 1 : 3)
 set(gca, 'YTick', -1 : 0.5 : 1);
 xlabel('Time \itt\rm')
 ylabel(['\itf\rm_{', int2str(2 * k - 1), '}(\itt\rm)']);
 title(['方波的', int2str(2 * k - 1), '阶合成',],'Fontname','SimHei');
end
