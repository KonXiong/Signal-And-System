%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:傅里叶变换的性质测试
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% (c)对称
syms t;
f=heaviside(t+1)- heaviside(t-1);
F=fourier(f);
figure('Color', 'White', 'Position', [100 100 960 480]);
subplot(2,3,1);eplotF(abs(F),1);
subplot(2,3,4);eplotF(angle(F),2);
f1=f*exp(-20*1i*t);
F1=fourier(f1);
subplot(2,3,2);eplotF(abs(F1),1);
ylabel('|\itF\rm_1(j\it\omega\rm)|');
subplot(2,3,5);eplotF(angle(F1),2);
ylabel('\itAngle\rm_1(\itφ\rm)');
f2=f*exp(20*1i*t);
F2=fourier(f2);
subplot(2,3,3);eplotF(abs(F2),1);
ylabel('|\itF\rm_2(j\it\omega\rm)|');
subplot(2,3,6);eplotF(angle(F2),2)
ylabel('\itAngle\rm_2(\itφ\rm)');
