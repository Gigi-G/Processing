void setup(){
  size(500,500);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  rotate(millis()*0.001*TWO_PI/10.0);
  fill(255,255,0);
  ellipse(0,0,80,80);
  translate(200,0);
  rotate(millis()*0.001*TWO_PI/5.0);
  fill(255);
  noStroke();
  ellipse(0,0,40,40);
  strokeWeight(5);
  stroke(255,0,0);
  line(-20,0,20,0);
}
