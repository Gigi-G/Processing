class GreatShield extends Shield{
 float scale, s;
 GreatShield(float x, float y, float sx){
  super(x,y,sx);
  scale = 0.5;
  c = color(255,0,0);
  s = 0.05;
 }
 
 void display(){
  stroke(color(255,255,0));
  fill(c);
  pushMatrix();
  translate(x+25,y-25);
  scale(scale);
  triangle(-25,25,0,-25,25,25);
  popMatrix(); 
 }
 
 void move(){
  super.move();
  scale+=s;
  if(scale<=0.5 || scale>=2) s = -s;
 }
 
 void run(){
  move();
  display(); 
 }
}
