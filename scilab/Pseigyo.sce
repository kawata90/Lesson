s=%s;
t=0:0.01:3;
G=10/((s+5)*(s+2));
Kp=1;sys=syslin("c",G*Kp/(1+G*Kp));
y1=csim("step",t,sys);
Kp=10;sys=syslin("c",G*Kp/(1+G*Kp));
y2=csim("step",t,sys);
Kp=100;sys=syslin("c",G*Kp/(1+G*Kp));
y3=csim("step",t,sys);
clf();plot2d(t',[y1',y2',y3'])