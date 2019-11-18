float rotAngle=10;

void setup(){
 size(500,500); 
 frameRate(10);
}

void draw(){
  fill(255,50);
  rect(0,0,width,height); //trucco fotogrammi precedenti
  pushMatrix();
    translate(width/2,height/2);
    rotate(radians(rotAngle));
    noStroke();
    fill(255,0,0);
    ellipse(200,0,20,20);
  popMatrix();
  pushMatrix();
    translate(width/2,height/2);
    rotate(radians(rotAngle));
    noStroke();
    fill(255,0,0);
    ellipse(100,0,20,20);
  popMatrix();
  rotAngle+=30;
}
