if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="CM_chs-88";
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
size(250);
//直立转动Lagrange陀螺的等效势能曲线
picture tmp;
pair O,P;
real a,b,top,bot,x,left,right,height;
path clp;
real U(real theta){
return a*(tan(theta/2))**2-b*(sin(theta/2))**2;
}
O = (0,0);
top = 70;
bot = -15;
x = 25;
draw(tmp,O--(pi,0));
a = 4;
b = 2;
draw(tmp,graph(U,0,3),green+linewidth(0.8bp));
a = 2;
b = 2;
draw(tmp,graph(U,0,3),orange+linewidth(0.8bp));
a = 0.1;
b = 10;
draw(tmp,graph(U,0,3.141),red+linewidth(0.8bp));
clp = box((0,bot),(pi,top));
clip(tmp,clp);
draw(tmp,clp);
top = 60;
clp = box((-1,bot),(pi,top));
clip(tmp,clp);
add(xscale(x)*tmp);
label("$0$",(0,bot),S);
label("$\pi$",(x*pi,bot),S);
label("$\theta$",(x*pi,bot),E);
label("$U$",(0,top),N);
label("$E$",O,W);
left = 2;
right = 28;
height = 20;
top = top-2;
fill(shift((1,-1))*box((left,top),(right,top-height)),black);
unfill(box((left,top),(right,top-height)));
draw(box((left,top),(right,top-height)));
P = ((left+right)/2,top-height/6);
label("$L_3^2 > 4I_1 Mgl$",P,green);
P = ((left+right)/2,top-3*height/6);
label("$L_3^2 = 4I_1 Mgl$",P,orange);
P = ((left+right)/2,top-5*height/6);
label("$L_3^2 < 4I_1 Mgl$",P,red);
//draw(O--(x*pi*1.1,0),invisible);
