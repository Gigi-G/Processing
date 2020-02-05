ArrayList<Bullet> b;
ArrayList<Asteroid> a;
Gun g;

void setup(){
  background(0,128,240);
  size(512,512);
  b = new ArrayList<Bullet>();
  a = new ArrayList<Asteroid>();
  g = new Gun(width/2,height-35);
}

void draw(){
 background(0,128,240);
 if(random(0,1)<=0.05) a.add(new Asteroid(-50,random(0,256),random(2,7),random(-2,2)));
 for(Bullet B : b) B.run();
 for(Asteroid A : a) {
   A.run();
   for(Bullet B : b) A.hit(B);
 }
 g.run(); 
}

void keyPressed(){
 if(key=='A') b.add(g.shot()); 
}
