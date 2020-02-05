int x = 0;

void setup(){
 size(500,500);
}

void draw(){
 //background(255);
 fill(0,25);
 rectMode(CORNER);
 rect(0,0,width,height);
 rectMode(CENTER);
 pushMatrix();
   translate(x+100,200);
   rotate(radians(frameCount%360));
   fill(0,0,255);
   rect(0,0,40,40);
 popMatrix();
 pushMatrix();
   translate(x+300,200);
   rotate(radians(10*frameCount%360));
   fill(255,0,0);
   rect(0,0,40,40);
 popMatrix();
 x++;
}
