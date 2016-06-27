if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-124";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{SimSun}");
usepackage("amsmath");
usepackage("siunitx");
import graph;
import math;
size(250);
//86页11.4
picture tmp,dashpic;
pair O,A,B,dash,P;
real phi,a,x,y,ri,ro,tri,d;
path tre;
O = (0,0);
phi = 35;
a = 1;
x = 2.3;
y = 1;
A = a*dir(phi);
B = A+a*dir(-phi);
ri = 0.018;
ro = 0.035;
tri = 0.1;
tre = 0.5*x*dir(180)--0.5*x*dir(0);
dash = a*dir(-60);
draw(dashpic,tre,linewidth(1bp));
for(real r=0;r<=1;r=r+0.02){
P = relpoint(tre,r);
draw(dashpic,P--P+dash);
}
d = 0.05;
add(tmp,dashpic);
clip(tmp,box((-1.5*tri,1),(1.5*tri,-d)));
add(shift(tri*Sin(60)*dir(-90))*tmp);
erase(tmp);
add(tmp,dashpic);
clip(tmp,box((-3*tri,1),(3*tri,-d)));
add(shift(B)*tmp);
erase(tmp);
draw(Label("$x$",EndPoint),O--x*dir(0),Arrow);
draw(Label("$y$",EndPoint),O--y*dir(90),Arrow);
unfill(shift(B)*scale(1.2)*box((-tri,-d),(tri,d)));
draw(shift(B)*scale(1.2)*box((-tri,-d),(tri,d)),linewidth(0.8bp));
draw(O--A--B,linewidth(0.8bp));
draw(O--tri*dir(-60)--tri*dir(-120)--cycle,linewidth(0.8bp));
unfill(shift(O)*scale(ro)*unitcircle);
draw(shift(O)*scale(ri)*unitcircle,linewidth(0.8bp));
draw(shift(O)*scale(ro)*unitcircle,linewidth(0.8bp));
unfill(shift(A)*scale(ro)*unitcircle);
draw(shift(A)*scale(ri)*unitcircle,linewidth(0.8bp));
draw(shift(A)*scale(ro)*unitcircle,linewidth(0.8bp));
unfill(shift(B)*scale(ro)*unitcircle);
draw(shift(B)*scale(ri)*unitcircle,linewidth(0.8bp));
draw(shift(B)*scale(ro)*unitcircle,linewidth(0.8bp));
label("$O$",O,NW);
label("$A$",A,2*N);
label("$B$",B,4*N);
dot((A+B)/2);
label("$M$",(A+B)/2,NE);
draw(Label("$\phi=\omega t$",MidPoint,Relative(E)),arc(O,5*ro,0,phi),Arrow);
