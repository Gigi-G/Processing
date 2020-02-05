class StrangeDrop extends Drop{
  boolean enabled;
  
  StrangeDrop(float x, float y){
   super(x,y);
   c = color(0,255,0);
   enabled = true;
  }
  
  void check(){
   if(dist(x,y+15,mouseX,mouseY)<10){
     enabled = false;
     c = color(255,0,0);
   }
   else{
     enabled = true;
     c = color(0,255,0);
   }
  }
  
  void run(){
   if(enabled) move();
   check();
   display();
  }
}
