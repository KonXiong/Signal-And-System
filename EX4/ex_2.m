%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  ÐÜ¿µ
%E-mail£º 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:»­³ö²¨ÐÎÍ¼ºÍÆµÆ×Í¼
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
syms t;
Omega = 1;
f_2a = cos(Omega * t) * cos(9 * Omega *t);
f_2b = (1.5 + sin(Omega * t)) * cos(9 * Omega * t);
F_2a = fourier(f_2a);
F_2b = fourier(f_2b);
figure('Color', 'White', 'Position', [100 100 640 480], 'MenuBar', 'None');
subplot(2, 1, 1);
Fig = ezplot(f_2a);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
axis([-7 7 -1.1 1.1]);
set(gca, 'XTick', -6 : 2 : 6)
set(gca, 'YTick', -1 : 0.5 : 1);
xlabel('Time \itt\rm');
ylabel('\itf\rm_{2\ita\rm}(\itt\rm)=cos\itt\rmcos9\itt\rm');
title('');
subplot(2, 1, 2);
Fig = ezplot(F_2a);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Frequency \it\omega\rm');
ylabel('|\itF\rm_{2\ita}\rm(j\it\omega\rm)|');
title('');
figure('Color', 'White', 'Position', [100 100 640 480], 'MenuBar', 'None');
subplot(2, 1, 1);
Fig = ezplot(f_2b);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
axis([-7 7 -3.1 3.1]);
set(gca, 'XTick', -6 : 2 : 6)
set(gca, 'YTick', -3 : 1 : 3);
xlabel('Time \itt\rm');
ylabel('\itf\rm_{2\itb\rm}(\itt\rm)=(1.5 + sin\itt\rm)cos9\itt\rm');
title('');
subplot(2, 1, 2);
Fig = ezplot(F_2b);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Frequency \it\omega\rm');
ylabel('|\itF\rm_{2\itb}\rm(j\it\omega\rm)|');
title('');



