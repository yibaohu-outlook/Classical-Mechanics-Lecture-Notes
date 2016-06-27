if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-38";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{SimSun}");
usepackage("amsmath");
import graph;
import math;
size(300);
//一维弦的横振动
real x,y;
x = 2.2;
y = 1.4;
real f(real x){
return atan(x);
}
draw(Label("$x$",EndPoint),(0,0)--(x,0),Arrow);
draw(Label("$y$",EndPoint),(0,0)--(0,y),Arrow);
path p = graph(f,0.2,2);
draw(p,linewidth(0.8bp));
pair A0,A1,A2,A3,A4,A5,A6,T1,T2;
A0 = relpoint(p,0.2);
A1 = relpoint(p,0.3);
A2 = relpoint(p,0.4);
T1 = -reldir(p,0.4);
A3 = relpoint(p,0.5);
A4 = relpoint(p,0.6);
T2 = reldir(p,0.6);
A5 = relpoint(p,0.7);
A6 = relpoint(p,0.8);
draw((A0.x,0)--A0,dashed);
draw(Label("$\eta_{i-1}$",MidPoint,Relative(E)),(A1.x,0)--A1);
draw((A2.x,0)--A2,dashed);
draw(Label("$\eta_i$",MidPoint,Relative(E)),(A3.x,0)--A3);
draw((A4.x,0)--A4,dashed);
draw(Label("$\eta_{i+1}$",MidPoint,Relative(E)),(A5.x,0)--A5);
draw((A6.x,0)--A6,dashed);
real l,r;
l = 0.3;
dot(A2);
draw(Label("$\boldsymbol{T}$",EndPoint,Relative(E)),A2--A2+l*T1,Arrow);
dot(A4);
draw(Label("$\boldsymbol{T}$",EndPoint,Relative(W)),A4--A4+l*T2,Arrow);
draw(A2--A2+l*dir(180),dashed);
draw(A4--A4+l*dir(0),dashed);
r = 0.15;
draw(Label("$\theta_{i-\frac12}$",BeginPoint),arc(A2,r,180,degrees(T1)));
draw(Label("$\theta_{i+\frac12}$",BeginPoint),arc(A4,r,0,degrees(T2)));
