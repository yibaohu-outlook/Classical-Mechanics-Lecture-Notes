if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-92";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

usepackage("xeCJK");
usepackage("amsmath");
import graph;
import math;
size(300);
//第七章例1图
pair O,O1,M;
real theta,phi,r,x,y,rr;
O = (0,0);
theta = 50;
phi = 35;
r = 1;
x = 2.1;
y = 2.1;
O1 = r*dir(theta);
M = O1+r*dir(theta+phi);
draw(Label("$x$",EndPoint),O--x*dir(0),Arrow);
draw(Label("$y$",EndPoint),O--y*dir(90),Arrow);
label("$O$",O,SW);
draw(shift(O1)*scale(r)*unitcircle);
draw(Label("$x'$",EndPoint),O--1.6*O1,Arrow);
draw(Label("$y'$",EndPoint),O1--O1+0.6*r*dir(90+theta),Arrow);
label("$O'$",O1,SE);
dot(M);
label("$M$",M,N);
draw(O--M--O1);
draw(Label("$\boldsymbol{e}_r$",EndPoint,Relative(E)),O1--O1+0.5*r*dir(theta+phi),Arrow);
draw(Label("$\boldsymbol{e}_\theta$",EndPoint,Relative(W)),O1--O1+0.5*r*dir(90+theta+phi),Arrow);
rr = 0.2;
draw(Label("$\omega t$",MidPoint,Relative(E)),arc(O,rr,0,theta),Arrow);
draw(Label("$\theta$",MidPoint,Relative(E)),arc(O1,rr,theta,theta+phi),Arrow);
//draw(O--1.1*x*dir(0),invisible);
