//interpolazione

float x, y;

void setup(){
  size(500,500);
  noStroke();
  background(0);
}

void draw(){
  fill(0,50);
  rect(0,0,width,height);
  //if(frameCount%60==0) background(0);
  x=lerp(x,mouseX,0.05);
  y=lerp(y,mouseY,0.05);
  fill(255);
  ellipse(x,y,50,50);
}
