class Balloon{
 float x, y, sx, w, h;
 color c;
 color comp;
 
 Balloon(float x, float y, float sx, float w, float h){
   this.x = x;
   this.y = y; 
   this.sx = sx;
   this.w = w;
   this.h = h;
   float r = random(0,256);
   float g = random(0,256);
   float b = random(0,256);
   c = color(r,g,b);
   comp = color(255-r,255-g,255-b);
 }
 
 void display(){
  stroke(comp);
  fill(c);
  ellipse(x,y,w,h);
  line(x,y+h/2,x,y+h/2+2*w);
 }
 
 void move(){
  x+=sx;
  if(x-w/2>=width) x = 0;
  else if(x<=-w/2) x = width;
 }
 
 void run(){
  move();
  display();
 }
}
