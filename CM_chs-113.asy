if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-113";
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
size(200);
//45页5.14
picture tmp;
pair O,A,B,P,dash,pace;
real R,r,l,d,dd,theta;
int imax;
path clp;
O = (0,0);
r = 1;
l = 0.2;
d = 0.15;
theta = 50;
A = (r+l)*dir(-theta-90);
B = (r+l)*dir(theta-90);
draw(tmp,A+1.5*d*dir(180-theta)--A-1.5*d*dir(180-theta),linewidth(0.8bp));
draw(tmp,A+d*dir(180-theta)--A+d*dir(180-theta)+(l+r)*dir(90-theta)--A-d*dir(180-theta)+(l+r)*dir(90-theta)--A-d*dir(180-theta));
imax = 8;
dash = 0.5*dir(-90);
pace = -2*1.5*d*dir(180-theta)/imax;
P = A+1.5*d*dir(180-theta)-4*pace;
for(int i=1;i<=2*imax;i=i+1){
draw(tmp,P--P+dash);
P = P+pace;
}
dd = 0.08;
clp = A+1.5*d*dir(180-theta)-dd*dir(90-theta)--A+1.5*d*dir(180-theta)+(l+r)*dir(90-theta)--A-1.5*d*dir(180-theta)+(l+r)*dir(90-theta)--A-1.5*d*dir(180-theta)-dd*dir(90-theta)--cycle;
clip(tmp,clp);
add(tmp);
add(xscale(-1)*tmp);
unfill(shift(O)*scale(r)*unitcircle);
draw(shift(O)*scale(r)*unitcircle);
draw(O--1.1*A,dashed);
draw(O--1.1*B,dashed);
draw((r+l)*dir(180)--(r+l)*dir(0),dashed);
draw(Label("$\boldsymbol{Q}$",EndPoint),O--(r+l)*dir(-90),Arrow);
draw(Label("$\boldsymbol{T}$",BeginPoint,Relative(W)),r*dir(0)+0.9*(r+l)*dir(90)--r*dir(0),Arrow);
R = 0.2;
draw(Label("$\theta$",MidPoint,Relative(W)),arc(O,R,theta-90,-90),Arrows);
draw(Label("$\theta$",MidPoint,Relative(W)),arc(O,R,-90,-90-theta),Arrows);
label("$A$",A,3*W);
label("$B$",B,3*E);
