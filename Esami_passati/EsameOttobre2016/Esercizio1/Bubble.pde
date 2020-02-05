class Bubble{
 float x, y, sv, D;
  
 Bubble(float x, float y, float sv, float D){
   this.x = x;
   this.y = y;
   this.sv = sv;
   this.D = D;
 }
 
 void display(){
  fill(0,128,255);
  ellipse(x,y,D,D);
  fill(255);
  ellipse(x-D/4,y-D/4,D/4,D/4);
 }
 
 void move(){
  y -= sv; 
 }
 
 void run(){
  move();
  display(); 
 }
}
