%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  �ܿ�
%E-mail�� 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:����nconv���������� x[n]*h[n] ͼ��
%Version: 2022-3-23 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [f, t_conv] = nconv(f_1_t, f_2_t, t1, t2, dt)
%���������źž������� f(t) = f1(t) * f2(t);
% f: ������ f(t)��Ӧ�ķ�����ֵ����;
% f_1_t : f1(t)������ֵ����;
% f_2_t : f2(t)�ķ�����ֵ����;
% t1 : f1(t)�Ķ�Ӧʱ������;
% t2 : f2(t)�Ķ�Ӧʱ������;
% t_conv��f(t)�Ķ�Ӧʱ������;
% dt��ȡ��ʱ����;


f = conv(f_1_t, f_2_t); %�������� f1 �� f2 �ľ����� f;
f = f * dt;
t_start = t1(1) + t2(1); %�������� f ������ֵ�����λ��;
n_count = length(f_1_t) + length(f_2_t)- 2; %��������� f �ķ�����ֵ�Ŀ���;
t_end = t_start + n_count * dt;
t_conv = t_start : dt : t_end; %������ f ������ֵ��ʱ������;
figure('Color', 'White', 'Position', [100 100 960 480], 'MenuBar', 'None');
subplot(2, 2, 1);
plot(t1, f_1_t, 'o', 'LineWidth', 2); %����ͼ 1 �� f1(t)ʱ����ͼ;
% axis([t1(1)-0.1, t1(1)+length(f_1_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t1(1) : 1 : t1(1)+length(f_1_t)*dt);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm_1(\itt\rm)');
% title('�ź�\itf\rm_1(\itt\rm)');
subplot(2, 2, 2);
plot(t2, f_2_t, 'o','LineWidth', 2); %����ͼ 2 �� f2(t)ʱ����ͼ;
% axis([t2(1)-0.1, t2(1)+length(f_2_t)*dt+0.1, -0.1, 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t2(1) : 1 : t2(1)+length(f_2_t)*dt);
set(gca, 'YTick', 0 : 0.5 : 2);
xlabel('Time \itt\rm');
ylabel('\itf\rm_2(\itt\rm)');
% title('�ź�\itf\rm_2(\itt\rm)');
subplot(2, 2, [3, 4]);
plot(t_conv, f,  'o','LineWidth', 2); %������ f(t)��ʱ����;
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
% axis([t_start - 0.1 t_end + 0.1 -0.1 2.1]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
set(gca, 'XTick', t_start : 1 : t_end);
set(gca, 'YTick', 0 : 0.5 : 2);
% xlabel('Time \itt\rm');
ylabel('\itf\rm(\itt\rm)');
% title('ʵ�� 2-3 ���źŵľ������� \itf\rm(\itt\rm)=\itf\rm_1(\itt\rm)*\itf\rm_2(\itt\rm)');
end