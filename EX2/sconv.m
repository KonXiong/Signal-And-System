%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:函数sconv画出卷积积分 f1(t)* f2(t)图形
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [f, t_conv] = sconv(f_1_t, f_2_t, t1, t2, dt)
%计算连续信号卷积积分 f(t) = f1(t) * f2(t);
% f: 卷积积分 f(t)对应的非零样值向量;
% f_1_t : f1(t)非零样值向量;
% f_2_t : f2(t)的非零样值向量;
% t1 : f1(t)的对应时间向量;
% t2 : f2(t)的对应时间向量;
% t_conv：f(t)的对应时间向量;
% dt：取样时间间隔;
f = conv(f_1_t, f_2_t); %计算序列 f1 与 f2 的卷积和 f;
f = f * dt;
t_start = t1(1) + t2(1); %计算序列 f 非零样值的起点位置;
n_count = length(f_1_t) + length(f_2_t)- 2; %计算卷积和 f 的非零样值的宽度;
t_end = t_start + n_count * dt;
t_conv = t_start : dt : t_end; %卷积和 f 非零样值的时间向量;
figure('Color', 'White', 'Position', [100 100 960 480], 'MenuBar', 'None');
subplot(2, 2, 1);
plot(t1, f_1_t, 'LineWidth', 2); %在子图 1 绘 f1(t)时域波形图;
axis([t1(1)-0.1, t1(1)+length(f_1_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t1(1) : 1 : t1(1)+length(f_1_t)*dt);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm_1(\itt\rm)');
% title('信号\itf\rm_1(\itt\rm)');
subplot(2, 2, 2);
plot(t2, f_2_t, 'LineWidth', 2); %在子图 2 绘 f2(t)时波形图;
axis([t2(1)-0.1, t2(1)+length(f_2_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t2(1) : 1 : t2(1)+length(f_2_t)*dt);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm_2(\itt\rm)');
% title('信号\itf\rm_2(\itt\rm)');
subplot(2, 2, [3, 4]);
plot(t_conv, f, 'LineWidth', 2); %画卷积 f(t)的时域波形;
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
axis([t_start - 0.1 t_end + 0.1 -0.1 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t_start : 1 : t_end);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm(\itt\rm)');
% title('实验 2-3 两信号的卷积积分 \itf\rm(\itt\rm)=\itf\rm_1(\itt\rm)*\itf\rm_2(\itt\rm)');
end