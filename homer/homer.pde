//occhi che seguono ciambella
float x1,y1,x2,y2,yc,xc;
int a;

void setup(){
  size(500,500);
  yc = 25;
  a = 0;
  xc = 0;
}

void draw(){
 background(255,255,0);
 if(a==1 && yc<=height+25){
   ellipse(width/2-30,height/2,50,50);
   ellipse(width/2+30,height/2,50,50);
   x1 = map(xc,0,width,-45,-15);
   y1 = map(yc,0,height,-15,15);
   x2 = map(xc,0,height,15,45);
   y2 = map(yc,0,height,-15,15);
   ellipse(width/2+x1,height/2+y1,4,4);
   ellipse(width/2+x2,height/2+y2,4,4);
   fill(255,125,0);
   ellipse(xc,yc,50,50);
   fill(255,255,0);
   ellipse(xc,yc,30,30);
   fill(255);
   yc++;
 }
 else{
   a = 0;
   yc = 25;
   fill(255);
   ellipse(width/2-30,height/2,50,50);
   ellipse(width/2+30,height/2,50,50);
   x1 = map(mouseX,0,width,-45,-15);
   y1 = map(mouseY,0,height,-15,15);
   x2 = map(mouseX,0,height,15,45);
   y2 = map(mouseY,0,height,-15,15);
   ellipse(width/2+x1,height/2+y1,4,4);
   ellipse(width/2+x2,height/2+y2,4,4);
 }
}

void mousePressed(){
   a = 1;
   xc = random(50,width-49);
}
