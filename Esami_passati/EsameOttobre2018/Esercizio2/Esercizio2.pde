ArrayList<EnergySpot> E;
ArrayList<Alien> A;
int H, K;

void setup(){
  size(512,512);
  background(255);
  E = new ArrayList<EnergySpot>();
  A = new ArrayList<Alien>();
  H = int(random(1,5));
  K = int(random(7,19));
  for(int i=0; i<H; i++){
   E.add(new EnergySpot(random(0,513),random(0,513))); 
  }
  for(int i=0; i<K; i++){
   A.add(new Alien(random(0,513),random(0,513),random(5,21), random(0,1))); 
  }
}

void draw(){
  background(255);
  for(EnergySpot e : E) {e.run();}
  for(Alien a : A) {a.run(E);}
}

void keyPressed(){
 if(key=='R') setup(); 
}
