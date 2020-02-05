class Gun{
 float x, y, b, h;
 
 Gun(float x, float y){
  this.x = x;
  this.y = y;
  this.b = 20;
  this.h = 70;
 }
 
 void display(){
   noStroke();
   rectMode(CENTER);
   fill(128);
   rect(x,y,b,h);
 }
 
 void move(){
  x = mouseX; 
 }
 
 Bullet shot(){
  Bullet b = new Bullet(x,y-h);
  return b;
 }
 
 void run(){
  move();
  display();
 }
}
