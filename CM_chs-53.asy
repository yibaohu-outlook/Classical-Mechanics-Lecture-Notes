if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-53";
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
//刚球势散射
pair O;
real theta,phi,r,l,r0;
O = (0,0);
r = 1;
l = 1.8;
theta = 55;
phi = (180+theta)/2;
draw(shift(O)*scale(r)*unitcircle);
draw(r*dir(phi)+0.8*l*dir(180)--r*dir(phi),red,Arrow);
draw(r*dir(phi)--r*dir(phi)+0.8*l*dir(theta),red,Arrow);
draw(O--2*r*dir(phi),dashed);
draw(O--2*r*dir(theta),dashed);
draw(l*dir(180)--l*dir(0),dashed);
draw(Label("$b$",MidPoint,Relative(E)),r*dir(phi)--((r*dir(phi)).x,0),dashed);
r0 = 0.2;
draw(Label("$\theta$",MidPoint,Relative(E)),arc(O,r0,0,theta),Arrow);
draw(Label("$\phi$",MidPoint,Relative(E)),arc(O,r0,phi,180),Arrow);
