function jyxulie(n0,nf,ns)
k = n0 : ns-1;
kk = ns : nf;
n = length(k);
nn = length(kk);
u =zeros(1,n);
uu = ones(1,nn);
figure('Color','White','Position',[100 100 640 240]);
stem(kk,uu,'filled');
hold on
stem(k,u,'filled');
hold off
title('µ¥Î»½×Ô¾ÐòÁÐ')
axis([n0 nf 0 1.5])
