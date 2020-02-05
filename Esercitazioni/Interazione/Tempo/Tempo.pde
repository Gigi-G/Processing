Orologio o;
int fps = 1;
void setup(){
   size(500,500);
   o = new Orologio(round(random(5,11)),color(random(0,256),random(0,256),random(0,256)),width/2,height/2,(int)random(0,60),(int)random(0,60),(int)random(0,12));
   frameRate(fps);
   background(255);
   o.display();
   o.run();
}

void draw(){
  background(255);
  o.run();
}

void keyPressed(){
   if(key == '+'){
      fps+=1; 
   }
   if(key == '-' && fps > 1){
     fps-=1;
   }
   println(fps);
   frameRate(fps);
}
