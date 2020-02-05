class Drop{
 float x, y, sx;
 color c;
 Drop(float x, float y){
  this.x = x;
  this.y = y;
  this.sx = 4;
  c = color(0,0,255);
 }
 
 void display(){
  strokeWeight(3);
  stroke(c);
  bezier(x,y,x,y+4,x+20,y+30,x,y+35);
  bezier(x,y,x,y+4,x-20,y+30,x,y+35);
 }
  
 void move(){
  x+=sx;
  if(x-10<=0 || x+10>=width) sx = -sx;
 }
 
 void run(){
  move();
  display();
 }
}
