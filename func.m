c1=25;
c2=28;
c3=26;
r1=12;
r2=13;
k=6;
a1=[c1 1 ;c2 1];
b1=[r1 ,r2]';
a2=[r1 1 ;r2 1];
b2=[c2, c3]';
a=a1\b1;
b=a2\b2;
x0(1)=39;
for n=1:30
    y0(n)=a(1)*x0(n)+a(2);
    x0(n+1)=b(1)*y0(n)+b(2);
    x(n)=x0(n);
    y(n)=x0(n+1);
end
plot(x,y0,'-g',y,y0,'-b')
hold on 
grid

for n=1:k
    for j=1:30
        t1=x0(n)+(j-1)*(x0(n+1)-x0(n))/30;
        t2=x0(n)+j*(x0(n+1)-x0(n))/30;
        if t2<t1
            t=t1;
            t1=t2;
            t2=t;
        else
        end
        t=t1:0.01:t2;
        plot(t,y0(n),'.m')  %全部都是散点
        t1=y0(n)+(j-1)*(y0(n+1)-y0(n))/30;
        t2=y0(n)+j*(y0(n+1)-y0(n))/30;
        if t2<t1;
            t=t1;
            t1=t2;
            t2=t;
        else
        end
        t=t1:0.01:t2;
        plot(x(n+1),t,'.m')
    end
end


