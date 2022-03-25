%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:产生单位指数序列
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function dbzhishu(a,n0,nf,ns)
% a:底数
% n0观察起点，ns之前为0，nf观察终点
k = n0 : ns-1;
kk = ns : nf;
n = length(k);
nn = length(kk);
u =zeros(1,n);
uu = ones(1,nn);
for g=1:nn
    uu(1,g)=uu(1,g)*a^(g-ns-1);
end
figure('Color','White','Position',[100 100 640 240]);
stem(kk,uu,'filled','LineWidth',2);
hold on
stem(k,u,'filled','LineWidth',2);
set(gca, 'FontName','Times New Roman','FontSize',10,'Linewidth',2);
xlabel('Number \it n \rm');
ylabel('\itx\rm[\itn\rm]');
hold off                                                                                                                           
end