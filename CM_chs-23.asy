if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-23";
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
//两个质点以柔软而不可伸长的绳子相联结约束
pair O,P1,P2,tan1,tan2;
real r,l1,l2;
path cyl;
O = (0,0);
r = 0.2;
cyl = shift(O)*scale(r)*unitcircle;
filldraw(cyl,blue,black);
P1 = relpoint(cyl,0.45);
tan1 = reldir(cyl,0.45);
P2 = relpoint(cyl,0.22);
tan2 = -reldir(cyl,0.22);
l1 = 1.5;
l2 = 1.8;
draw(P1--P1+l1*tan1);
draw(P2--P2+l2*tan2);
draw(Label("$\boldsymbol{R}_1$",EndPoint,E),P1+l1*tan1--P1+(l1-0.5)*tan1,Arrow);
draw(Label("$\delta \boldsymbol{r}_1^\parallel$",EndPoint),P1+l1*tan1--P1+(l1+0.5)*tan1,Arrow);
draw(Label("$\delta \boldsymbol{r}_1^\perp$",EndPoint),P1+l1*tan1--P1+l1*tan1+rotate(90)*0.5*tan1,Arrow);
draw(Label("$\boldsymbol{R}_2$",EndPoint,N),P2+l2*tan2--P2+(l2-0.5)*tan2,Arrow);
draw(Label("$\delta \boldsymbol{r}_2^\parallel$",EndPoint),P2+l2*tan2--P2+(l2+0.5)*tan2,Arrow);
draw(Label("$\delta \boldsymbol{r}_2^\perp$",EndPoint),P2+l2*tan2--P2+l2*tan2+rotate(90)*0.5*tan2,Arrow);
dot(P1+l1*tan1);
dot(P2+l2*tan2);
