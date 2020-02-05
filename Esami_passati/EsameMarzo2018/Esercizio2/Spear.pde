class Spear{
 float x, y, sy, y1;
 boolean stop;
 
 Spear(float x, float sy){
  this.x = x;
  this.y = 60;
  this.sy = sy;
  this.y1 = 0;
  stop = false;
 }
 
 float GetX(){ return x+2.5;}
 
 float GetY(){ return y;}
 
 void setState(){
    stop = true; 
 }
 
 void display(){
  noStroke();
  fill(0,120,255);
  triangle(x,y1,x+2.5,y,x+5,y1); 
 }
 
 void move(){
   y1+=sy;
   y+=sy;
 }
 
 void run(){
  if(!stop){
    move();
  }
  display();
 }
}
