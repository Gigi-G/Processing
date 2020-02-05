class EnergySpot{
 float d, x , y;
 color c;
 
 EnergySpot(float x, float y){
  d = 30;
  c = color(0,0,128);
  this.x = x;
  this.y = y;
 }
 
 float GetX() { return x;}
 
 float GetY() { return y;}
 
 void display(){
   noStroke();
   fill(c);
   ellipse(x,y,d,d);
 }
 
 void run(){
  display(); 
 }
}
