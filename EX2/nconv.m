%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:����nconv��������� x[n]*h[n] ͼ��
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y, n_conv] = nconv(h_n, x_n, n1, n2, dn)
%������ɢ�źž���� f(t) = f1(t) * f2(t);
% f: ����� f(t)��Ӧ�ķ�����ֵ����;
% h_n : h(n)������ֵ����;
% x_n : x(n)�ķ�����ֵ����;
% n1 : h(t)�Ķ�Ӧʱ������;
% n2 : x(t)�Ķ�Ӧʱ������;
% n_conv��y(t)�Ķ�Ӧʱ������;
% dn��ȡ�����м��;


y = conv(h_n, x_n); %�������� h �� x �ľ���� y;
y = y * dn;
t_start = n1(1) + n2(1); %�������� y ������ֵ�����λ��;
n_count = length(h_n) + length(x_n)- 2; %�������� y �ķ�����ֵ�Ŀ��;
t_end = t_start + n_count * dn;
n_conv = t_start : dn : t_end; %����� y ������ֵ����������;
figure('Color', 'White', 'Position', [100 100 960 480]);
subplot(2, 2, 1);
stem(n1, h_n, 'o', 'LineWidth', 2); %����ͼ 1 �� h[n]��ֵ����ͼ;
% axis([t1(1)-0.1, t1(1)+length(f_1_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', n1(1) : 1 : n1(1)+length(h_n)*dn);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Number \itn\rm');
ylabel('\ith\rm[\itn\rm]');
% title('�ź�\itf\rm_1(\itt\rm)');
subplot(2, 2, 2);
stem(n2, x_n, 'o','LineWidth', 2); %����ͼ 2 �� x[n]��ֵ����ͼ;
% axis([t2(1)-0.1, t2(1)+length(f_2_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', n2(1) : 1 : n2(1)+length(x_n)*dn);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Number \itn\rm');
ylabel('\itx\rm[\itn\rm]');
% title('�ź�\itf\rm_2(\itt\rm)');
subplot(2, 2, [3, 4]);
stem(n_conv, y,  'o','LineWidth', 2) %����� y[n]����ֵ����ͼ; 
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
% axis([t_start - 0.1 t_end + 0.1 -0.1 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t_start : 1 : t_end);
set(gca, 'YTick', 0 : 1 : 4);
xlabel('Number \itn\rm');
ylabel('\ity\rm[\itn\rm]');
end