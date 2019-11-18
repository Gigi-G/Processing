float shX,shY;

void setup(){
  size(500,500);
  shX=0.1;
  shY=0.1;
  rectMode(CENTER);
  fill(0,255,0);
}

void draw(){
 background(255);
 pushMatrix();
 translate(150,250);
 //shearX(shX);
 //shearY(shY);
 scale(shX,shY);
 rect(0,0,50,50);
 popMatrix();
 shX+=0.02;
 shY+=0.01;
}
