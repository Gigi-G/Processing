ArrayList<Bubble> B;
ArrayList<Fish> F;

void setup(){
  size(500,500);
  background(0,240,255);
  B = new ArrayList<Bubble>();
  F = new ArrayList<Fish>();
  frameRate(60);
}

void draw(){
 background(0,240,255);
 for(Fish f : F){
  if(random(0,1)<=0.02) B.add(f.genBubble());
  f.run();
 }
 for(Bubble b : B){
  b.run(); 
 }
}

void keyPressed(){
 if(key=='N'){
  F.add(new Fish(-50,random(40,451),random(1,5),random(-1.5,1.5),color(255,0,0))); 
 }
}
