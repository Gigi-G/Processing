class Pillow{
 float x, y, w, h, sx;
 color c;
 
 Pillow(float x, float y, float w, float h){
  sx = 2;
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  c = color(255);
 }
 
 void display(){
  rectMode(CENTER);
  noStroke();
  fill(c);
  rect(x,y,w,h);
 }
 
 void move(){
   x+=sx;
   if(x<=0 || x>=width) sx = -sx;
 }
 
 void run(){
  move();
  display();
 }
}
