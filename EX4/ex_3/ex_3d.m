%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:傅里叶变换的性质测试
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% (d)时域卷积定理
syms t
f=heaviside(t+1)-heaviside(t-1);
t1=-2:0.01:2;
t2=-4:0.01:4;
f1=(t1>=-1&t1<=1);
f2=heaviside(t1+1)-heaviside(t1-1);
y=conv(f2,f2);
figure('Color', 'White', 'Position', [100 100 960 480]);
subplot(2,3,1); Fig = plot(t1,f1);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Time \itt\rm');
ylabel('\itf(\itt\rm)=\itu\rm(\itt+1)-\itu\rm(\itt-1)');
subplot(2,3,2); Fig = plot(t2,y);
set(Fig, 'LineWidth', 2);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
xlabel('Time \itt\rm');
ylabel('\ity(\itt\rm)=\itf\rm(\itt\rm)*\itf\rm(\itt\rm)');
F=fourier(f); 
subplot(2,3,4); eplotF(F,1); 
subplot(2,3,5); eplotF(F*F,1);
ylabel('|\itF\rm(j\it\omega\rm)*\itF\rm(j\it\omega\rm)|');
y1=(t+2)*(heaviside(t+2)-heaviside(t))+(-t+2)*(heaviside(t)-heaviside(t-2));
Y=fourier(y1);
subplot(2,3,6); eplotF(Y,1)
ylabel('|\itY\rm(j\it\omega\rm)|');
