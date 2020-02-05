class HyperBall extends Ball{
 
 HyperBall(float x, float y, float R){
   super(x,y,R);
   c = color(0,0,255);
 }
 
 void checkMouse(){
  if(dist(mouseX,mouseY,x,y) <= R-0.5){
    c = color(random(0,256),random(0,256),random(0,256));
  }
 }
 
 void Run(){
  move();
  checkMouse();
  display();
 }
 
}
