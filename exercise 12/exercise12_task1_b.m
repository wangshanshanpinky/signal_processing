load testdata_fisher.mat
X1x=X1(:,1);
X1y=X1(:,2);
X2x=X2(:,1);
X2y=X2(:,2);
C1=cov(X1);
C2=cov(X2);
u1=(mean(X1))';
u2=(mean(X2))';
w=(C1+C2)\(u1-u2);
k=w(1)/w(2);
plot(X1x,X1y,'ro')
hold on
plot(X2x,X2y,'g+')
hold on
%line([-w(1),w(1)],[-w(2),w(2)])
n=(-6:1:6);
y=n*k;
plot(n,y)