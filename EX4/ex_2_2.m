%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  ÐÜ¿µ
%E-mail£º 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:»­³ö²¨ÐÎÍ¼ºÍÆµÆ×Í¼
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
%% a
dt=0.01;
t=-5:dt:5;
w=1;
f=cos(w.*t).*cos(9.*w.*t);
figure('Color', 'White', 'Position', [100 100 640 480], 'MenuBar', 'None');
subplot(2,1,1);
Fig = plot(t,f);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm_{\ita\rm}(\itt\rm)=cos\itt\rmcos9\itt\rm');
%
dw=0.01;
w=15*(-1:dw:1);F=f*exp(-1i*t'*w)*dt;
a=abs(F);
subplot(2,1,2);
Fig = plot(w,a);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Frequency \it\omega\rm');
ylabel('|\itF\rm_{\ita}\rm(j\it\omega\rm)|');
%% b
dt=0.01;
t=-5:dt:5;
w=1;
f=(1.5+sin(w.*t)).*cos(9.*w.*t);
figure('Color', 'White', 'Position', [100 100 640 480], 'MenuBar', 'None');
subplot(2,1,1);
Fig = plot(t,f);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm_{\itb\rm}(\itt\rm)=(1.5+sin\itt\rm)cos9\itt\rm');

%
dw=0.01;
w=15*(-1:dw:1);F=f*exp(-1i*t'*w)*dt;
a=abs(F);
subplot(2,1,2);
Fig = plot(w,a);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Frequency \it\omega\rm');
ylabel('|\itF\rm_{\itb}\rm(j\it\omega\rm)|');