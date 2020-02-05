ArrayList<Spear> s;
Baloon b;
double energy;
boolean stop;

void setup(){
 size(512,512);
 background(0,240,255);
 s = new ArrayList<Spear>();
 rectMode(CORNERS);
 rect(0,486.4,width-1,height);
 b = new Baloon(width/2,461.4);
 frameRate(60);
 energy = 0;
 stop = false;
}

void draw(){
  if (keyPressed && !stop)
  {
    if (((key=='a')||(key=='A'))&&(energy>-3))
      energy-=0.2;
    if (((key=='d')||(key=='D'))&&(energy<3))
      energy+=0.2;
  }
  else
  {
    if(energy>0)
      energy-=0.05;
    else if (energy<0)
      energy+=0.05;
  }
  energy *= b.move(energy);
  background(0,240,255);
  fill(255);
  rectMode(CORNERS);
  rect(0,486.4,width-1,height);
  if(random(0,1)<=0.10 && !stop){
    s.add(new Spear(random(0,512),random(3,8)));
  }
  b.display();
  for(Spear ss : s){
     ss.run();
     if(b.touch(ss)){
      for(Spear s2 : s) s2.setState();
      stop = true;
      energy = 0;
     }
  }
}

void keyPressed(){
 if(key=='R') setup();
}
