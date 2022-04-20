%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:  熊康
% E-mail： 206001232@nbu.edu.cn
% Tool:    MATLAB R2018b
% Function:傅里叶变换符号函数 fourier 和 ezplot测试
% Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc
%% 用符号函数 fourier 求傅里叶变换
syms t
a = 3;
f = exp(-a*abs(t));
F = fourier(f);
F

%% 用符号函数 ifourier 求傅里叶逆变换
syms omega
a = 1;
F = 2*a/(a^2+omega^2);
f = ifourier(f);
f

%% 利用符号函数 fourier 和 ezplot 画出函数及其幅频谱
syms t
f = exp(-2*t)/2*heaviside(t);
F = fourier(f);
figure('Color', 'White', 'Position', [100 100 640 480], 'MenuBar', 'None');
subplot(2, 1, 1);
Fig = ezplot(f);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', -6 : 2 : 6)
set(gca, 'YTick', -1 : 0.5 : 1);
xlabel('Time \itt\rm');
ylabel('\itf(\itt\rm)=cos\itt\rmcos9\itt\rm');
title('');
subplot(2, 1, 2);
Fig = ezplot(abs(F));
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Frequency \it\omega\rm');
ylabel('|\itF\rm(j\it\omega\rm)|');
title('');