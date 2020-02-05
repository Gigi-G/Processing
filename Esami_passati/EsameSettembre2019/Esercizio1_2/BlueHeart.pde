class BlueHeart extends Heart{
 boolean enabled;
 BlueHeart(float x, float y, float sx, float sy){
  super(x,y,sx,sy);
  c = color(0,0,255);
  enabled = true;
 }
 
 void display(){
   noStroke();
   fill(c);
   bezier(x+26,y+50,x-30,y+15,x+20,y-10,x+25,y+10);
   bezier(x+24,y+50,x+80,y+15,x+30,y-10,x+25,y+10);
 }
 
 void check(){
   if(dist(x+20,y+20,mouseX,mouseY)<=20){
    enabled = false;
    c = color(128);
   }
   else{
    enabled = true;
    c = color(0,0,255);
   }
 }
 
 void run(){
  if(enabled) move();
  check();
  display();
 }
}
