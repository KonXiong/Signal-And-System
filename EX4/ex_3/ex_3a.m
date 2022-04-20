%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:傅里叶变换的性质测试
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% (a)尺度变换
syms t;
f=heaviside(t+1)-heaviside(t-1);
figure('Color', 'White', 'Position', [100 100 640 480]);
subplot(2,1,1);
F=fourier(f);
eplotF(F,1);
%
y=heaviside(2*t+1)-heaviside(2*t-1);
subplot(2,1,2);
Y=fourier(y);
eplotF(Y,1);
ylabel('|\itY\rm(j\it\omega\rm)|');
