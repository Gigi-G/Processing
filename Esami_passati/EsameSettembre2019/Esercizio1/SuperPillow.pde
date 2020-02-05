class SuperPillow extends Pillow{
 float angle;
 SuperPillow(float x, float y, float w, float h){
  super(x,y,w,h);
  angle = random(0,360);
  c = color(255);
 }
 
 void display(){
  pushMatrix();
  translate(x,y);
  rotate(radians(angle));
  rectMode(CENTER);
  noStroke();
  fill(c);
  rect(0,0,w,h);
  fill(128);
  ellipse(0,0,w,w);
  popMatrix();
 }
 
 void move(){
  super.move();
  if(dist(x,y,mouseX,mouseY)<=w/2){
   angle+=5;
   angle = angle%360;
  }
 }
}

void keyPressed(){
 if(key=='R' || key == 'r') setup(); 
}
