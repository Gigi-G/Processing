class Shield{
 float x, y, sx, h;
 color c;
 
 Shield(float x, float y, float sx){
  h = 50;
  c = color(0,255,0);
  this.x = x;
  this.y = y;
  this.sx = sx;
 }
 
 void display(){
  noStroke();
  fill(c);
  triangle(x,y,x+25,y-h,x+50,y);
 }
 
 void move(){
  x+=sx;
  if(x>width+1 && sx>0) x = -51;
  else if(x<-51 && sx<0) x = width;
 }
 
 void run(){
  move();
  display(); 
 }
}
