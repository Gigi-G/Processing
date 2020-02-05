class YellowBalloon extends Balloon{
 boolean enabled;
 
 YellowBalloon(float x, float y, float sx, float w, float h){
  super(x,y,sx,w*2/3,h*2/3);
  c = color(0,0,255);
  comp = color(255,255,0);
  enabled = true;
 }
 
 void check(){
   if((mouseX>= x-(h*2/3)/2 && mouseX<=x+(h*2/3)/2) && (mouseY>=y-(h*2/3)/2-10 && mouseY<=y+(h*2/3)/2+5)) enabled  = false;
   else enabled = true;
 }
 
 void Run(){
  check();
  if(enabled) super.move();
  super.display();
 }
}
