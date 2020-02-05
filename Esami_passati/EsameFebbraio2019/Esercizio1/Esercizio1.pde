Ball b;
HyperBall h;

void setup(){
  background(255);
  size(512,256);
  b = new Ball(random(40,width/2-40),random(40,height/2-40),40);
  h = new HyperBall(random(width/2+40,width-40),random(height/2-40,height-40),40);
}

void draw(){
  background(255);
  b.run();
  h.Run();
}

void keyPressed(){
 if(key=='R' || key=='r') setup(); 
}
