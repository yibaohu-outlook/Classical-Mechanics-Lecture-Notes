if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-18";
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
size(200);
//双摆系统
pair O,x,y,P1,P2;
real theta1,theta2,l1,l2,r;
O = (0,0);
x = (4,0);
y = (0,-4);
l1 = 2;
l2 = 3;
theta1 = 30;
theta2 = 50;
draw(Label("$x$",EndPoint),O--x,Arrow);
draw(Label("$y$",EndPoint),O--y,Arrow);
P1 = l1*dir(theta1-90);
P2 = P1 + l2*dir(theta2-90);
r = 0.1;
fill(shift(P1)*scale(r)*unitcircle,black);
fill(shift(P2)*scale(r)*unitcircle,black);
draw(Label("$l_1$",MidPoint,Relative(W)),O--P1);
draw(Label("$l_2$",MidPoint,Relative(W)),P1--P2);
draw(P1--P1+1.5*dir(-90),dashed);
label("$\theta_1$",0.6*dir(theta1/2-90));
label("$\theta_2$",P1+0.5*dir(theta2/2-90));
label("$(x_1,y_1)$",P1,NE);
label("$(x_2,y_2)$",P2+(0.1,0),E);

//draw(O--(4.5,0),invisible);
