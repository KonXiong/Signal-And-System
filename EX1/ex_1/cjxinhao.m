%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:用于产生单位冲激信号
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function f=cjxinhao(delta,t,t1)
% f:产生的波形向量
% delta:冲激信号宽度
% t:‘观察时间’向量
% t1:冲激信号开始时刻
    k=length(t);
    f=zeros(1,k);
    for g=1:k
        if(t(g)>=t1-delta/2 && t(g)<=t1+delta/2) f(g)=1/delta;
    end
end