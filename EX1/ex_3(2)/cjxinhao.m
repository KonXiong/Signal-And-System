function f=cjxinhao(delta,t,t1)
    k=length(t);
    f=zeros(1,k);
    for g=1:k
        if(t(g)>=t1 && t(g)<=t1+delta) f(g)=1/delta;
    end
end