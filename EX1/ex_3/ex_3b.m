%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%Author:  熊康
%E-mail： 206001232@nbu.edu.cn
%Tool:    MATLAB R2018b
%Function:对原始波形进行平移、反褶和比例变换
%Version: 2022-3-9 v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms t
g1=str2sym('(t+1)*(heaviside(t+1)-heaviside(t))');
g2=str2sym('heaviside(t)-heaviside(t-2)');
f1=g1+g2;
subplot(2,2,1);fplot(f1,[-1 6],'LineWidth',2);title('a');
% 对原始波形进行平移
f2=subs(f1,t,t+5);
subplot(2,2,2);fplot(f2,[-6 3],'LineWidth',2);title('b');
% 对平移后波形进行反褶
f3=subs(f2,t,-t);
subplot(2,2,3);fplot(f3,[-1 6],'LineWidth',2);title('c');
% 对反褶后波形进行比例变换
f4=subs(f3,t,2*t);
subplot(2,2,4);fplot(f4,[-6 3],'LineWidth',2);title('d');