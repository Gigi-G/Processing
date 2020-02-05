class Baloon{
 float x, y, d;
 
 Baloon(float x,float y){
   this.x = x;
   this.y= y;
   d = 50;
 }
 
 void display(){
  noStroke();
  fill(255,0,0);
  ellipse(x,y,d,d);
 }
 
 double move(double e){
  x+=e;
  if(x>=486 || x<=25){
    return -1;
  }
  return 1;
 }
 
 double checkRange(double oldE, double e){
  if(oldE<e) return -1;
  return 1;
 }
 
 boolean checkTouch(float X, float Y){
   float d1 = dist(x,y,X,Y);
   return (d1<=d/2);
 }
 
 boolean touch(Spear s){
    if(checkTouch(s.GetX(), s.GetY())){
      return true;
    }
   return false;
 }
}
