class Asteroid{
 float x, y, sx, sy, d;
 boolean on;
 color c;
 
 Asteroid(float x, float y, float sx, float sy){
  this.x = x;
  this.y = y;
  this.sx = sx;
  this.sy = sy;
  d = 50;
  on = true;
  c = color(255,0,25);
 }
 
 void display(){
  stroke(255,255,0);
  strokeWeight(9);
  if(on) c = color(255,0,25);
  else c = color(128,128,128);
  fill(c);
  ellipse(x,y,d,d);
 }
 
 void move(){
   x+=sx;
   if(on){
    y+=sy;
   }
   else{
    sy+=0.2;
    y+=sy; 
   }
 }
 
 void hit(Bullet b){
   if(dist(b.GetX(),b.GetY()-5,x,y)<=d/2){
     on = false;
   }
 }
 
 void run(){
  move();
  display();
 }
}
