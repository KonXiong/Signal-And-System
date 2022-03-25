%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出单位冲激信号波形图
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;
t = 0 : 0.001 : 2;
delta = 0.2;
t1 = 1;
x = cjxinhao(delta,t,t1);
figure('Color','White','Position',[100 100 640 240]);
plot(t,x,'LineWidth',2);

