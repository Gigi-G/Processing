Shield s;
GreatShield gs;

void setup(){
 background(255);
 size(256,512);
 s = new Shield(random(0,width),random(0,height/2),random(-5,6));
 gs = new GreatShield(random(0,width),random(height/2,height),random(-5,6));
}

void draw(){
 background(255);
 s.run();
 gs.run();
}

void keyPressed(){
 if(key=='R' || key == 'r') setup(); 
}
