%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:画出原始波形
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms t
g1=str2sym('(t+1)*(heaviside(t+1)-heaviside(t))');
g2=str2sym('heaviside(t)-heaviside(t-2)');
f1=g1+g2;
fplot(f1,[-1 6],'LineWidth',2);
