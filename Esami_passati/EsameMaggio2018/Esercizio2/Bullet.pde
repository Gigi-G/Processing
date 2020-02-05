class Bullet{
 float x, y, d, sy;
 
 Bullet(float x, float y){
  d = 10;
  this.x = x;
  this.y = y;
  sy = -10;
 }
 
 float GetX(){ return x;}
 
 float GetY(){ return y;}
 
 void display(){
  noStroke();
  fill(161,11,161);
  ellipse(x,y,d,d); 
 }
 
 void move(){
  y+=sy; 
 }
 
 void run(){
  move();
  display();
 }
}
