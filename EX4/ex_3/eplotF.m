%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:格式化绘制频谱图
%Version: 2022-4-20 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function eplotF(F,c)
    if (c==1)
        Fig = ezplot(F);
        set(Fig, 'LineWidth', 2);
        set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
        xlabel('Frequency \it\omega\rm');
        ylabel('|\itF\rm(j\it\omega\rm)|');
        title('');
    elseif(c==0)
        Fig = ezplot(F);
        set(Fig, 'LineWidth', 2);
        set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
        xlabel('Time \itt\rm');
        ylabel('\itf\rm(\itt\rm)');
        title('');
    elseif(c==2)
        Fig = ezplot(F);
        set(Fig, 'LineWidth', 2);
        set(gca, 'FontName', 'Times New Roman', 'FontSize', 10, 'LineWidth', 2);
        xlabel('Frequency \it\omega\rm');
        ylabel('\itAngle\rm(\itφ\rm)');
        title('');
    end
end