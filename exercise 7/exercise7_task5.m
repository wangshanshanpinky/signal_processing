f=5000;
Fs=20000;
w=2*pi*f/Fs;
z=exp(1i*w);
Hz= (0.0675+0.1349*z^-1+0.0675*z^-2)/(1-1.143*z^-1+0.4128*z^-2);
x=abs(Hz);
disp(20*log10(x))
a=angle(Hz);
figure(1)
zplane([0.0675,0.1349,0.0675],[0.0675,0.1349,0.0675]);




