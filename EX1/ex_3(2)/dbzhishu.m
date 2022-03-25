function dbzhishu(a,n0,nf,ns)
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
stem(kk,uu,'filled');
hold on
stem(k,u,'filled');
hold off                                                                                                                           
end