function mcxulie(n0,nf,ns)
    n = n0 : nf;
    k = length(n);
    f = zeros(1,k);
    f(1,ns-n0+1) = 1;
    figure('Color','White','Position',[100 100 640 240]);
    stem(n,f,'filled');
    axis([n0,nf,0,1.5]);
end