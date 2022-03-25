%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出卷积和 x[n]*h[n] 图形
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clc;

dt = 1;
t1 = [-1 0 1 2 3 4 5];
t2 = [-1 0 1 2 3 4 5];
f_1_t = [0 1 1 1 0 0 0];
f_2_t = [0 1 2 1 0 0 0];


nconv(f_1_t, f_2_t, t1, t2, dt);

t = 0 : 1 : 4;
y = [1 3 4 3 1];
hold on
plot(t, y ,'*');
legend('Function Solve','Equation Solve');