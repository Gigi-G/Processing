class Block{
 float x, y, w, h, sx;
 color c;
 
 Block(float x, float y, float w, float h){
  sx = 4;
  this.x = x;
  this.y = y; 
  this.w = w;
  this.h = h;
  c = color(0,255,0);
 }
 
 void display(){
   noStroke();
   fill(c);
   rect(x,y,w,h);
 }
 
 void move(){
  x+=sx;
  if(x+w/2>=width || x+w/2<=0) sx = -sx;
 }
 
 void run(){
  move();
  display();
 }
}
