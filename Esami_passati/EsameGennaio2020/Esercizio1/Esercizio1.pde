Balloon b;
YellowBalloon yb;
int h;

void setup(){
 size(512,512);
 background(17,174,245);
 h = int(random(50,127));
 b = new Balloon(random(0,width),random(0,height/2),random(-5,5),h/2,h);
 yb = new YellowBalloon(random(0,width),random(height/2,height),random(-5,5),h/2,h);
}

void draw(){
 background(17,174,245);
 b.run();
 yb.Run();
}

void keyPressed(){
 if(key=='R' || key == 'r') setup(); 
}
