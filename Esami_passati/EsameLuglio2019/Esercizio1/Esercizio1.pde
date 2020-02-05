Drop d;
StrangeDrop sd;

void setup(){
  background(255);
  size(256,512);
  d = new Drop(random(30,width-30),random(40,height/2));
  sd = new StrangeDrop(random(30,width-30),random(height/2,height-40));
}

void draw(){
 background(255);
 d.run();
 sd.run();
}

void keyPressed(){
 if(key=='R' || key=='r') setup();
}
