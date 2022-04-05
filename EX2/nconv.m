%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:函数nconv画出卷积和 x[n]*h[n] 图形
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y, n_conv] = nconv(h_n, x_n, n1, n2, dn)
%计算离散信号卷积和 f(t) = f1(t) * f2(t);
% f: 卷积和 f(t)对应的非零样值向量;
% h_n : h(n)非零样值向量;
% x_n : x(n)的非零样值向量;
% n1 : h(t)的对应时间向量;
% n2 : x(t)的对应时间向量;
% n_conv：y(t)的对应时间向量;
% dn：取样序列间隔;


y = conv(h_n, x_n); %计算序列 h 与 x 的卷积和 y;
y = y * dn;
t_start = n1(1) + n2(1); %计算序列 y 非零样值的起点位置;
n_count = length(h_n) + length(x_n)- 2; %计算卷积和 y 的非零样值的宽度;
t_end = t_start + n_count * dn;
n_conv = t_start : dn : t_end; %卷积和 y 非零样值的序列向量;
figure('Color', 'White', 'Position', [100 100 960 480]);
subplot(2, 2, 1);
stem(n1, h_n, 'o', 'LineWidth', 2); %在子图 1 绘 h[n]样值序列图;
% axis([t1(1)-0.1, t1(1)+length(f_1_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', n1(1) : 1 : n1(1)+length(h_n)*dn);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Number \itn\rm');
ylabel('\ith\rm[\itn\rm]');
% title('信号\itf\rm_1(\itt\rm)');
subplot(2, 2, 2);
stem(n2, x_n, 'o','LineWidth', 2); %在子图 2 绘 x[n]样值序列图;
% axis([t2(1)-0.1, t2(1)+length(f_2_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', n2(1) : 1 : n2(1)+length(x_n)*dn);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Number \itn\rm');
ylabel('\itx\rm[\itn\rm]');
% title('信号\itf\rm_2(\itt\rm)');
subplot(2, 2, [3, 4]);
stem(n_conv, y,  'o','LineWidth', 2) %画卷积 y[n]的样值序列图; 
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
% axis([t_start - 0.1 t_end + 0.1 -0.1 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t_start : 1 : t_end);
set(gca, 'YTick', 0 : 1 : 4);
xlabel('Number \itn\rm');
ylabel('\ity\rm[\itn\rm]');
end