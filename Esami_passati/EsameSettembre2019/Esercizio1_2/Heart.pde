class Heart{
 float x, y, sx, sy;
 color c;
 Heart(float x, float y, float sx, float sy){
  this.x = x;
  this.y = y;
  this.sx = sy;
  this.sy = sy;
  c = color(255,0,0);
 }
 
 void display(){
   noStroke();
   fill(c);
   bezier(x+26,y+40,x-10,y+15,x+10,y-10,x+25,y+10);
   bezier(x+24,y+40,x+60,y+15,x+40,y-10,x+25,y+10);
 }
 
 void move(){
  x+=sx;
  y+=sy;
  if(x<=-10 || x+40>=width) sx = -sx;
  if(y<=-10 || y+40>=height) sy = -sy;
 }
 
 void run(){
  move();
  display();
 }
}
