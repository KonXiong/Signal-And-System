%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:傅里叶变换的性质测试
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% (e)时域卷积定理
syms t;
f=sinc(t/pi);
F=fourier(f);
figure('Color', 'White', 'Position', [100 100 640 240]);
subplot(1,2,1);eplotF(f,0);
subplot(1,2,2);eplotF(F,1);
%
f1=pi*(heaviside(t+1)-heaviside(t-1));
F1=fourier(f1);
figure('Color', 'White', 'Position', [100 100 640 240]);
subplot(1,2,1);eplotF(f1,0);
ylabel('\itf\rm_1(\itt\rm)');
subplot(1,2,2);eplotF(F1,1);
ylabel('|\itF\rm_1(j\it\omega\rm)|');
