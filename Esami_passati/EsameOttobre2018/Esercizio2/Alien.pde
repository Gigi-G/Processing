class Alien{
 float x, y, L, E, sv;
 color c;
 boolean vivo;
 boolean arrivato;
 
 Alien(float x, float y, float L, float E){
   this.E=E;
   if(E>0) {
     c = color(0,255,0);
     vivo = true;
   }
   else {
     c = color(0);
     vivo = false;
   }
   arrivato = false;
   this.x=x;
   this.y=y;
   this.L=L;
   sv = 2;
 }
 
 void display(){
   noStroke();
   fill(c);
   rectMode(CENTER);
   rect(x,y,L,L);
 }
 
 void move(ArrayList<EnergySpot> e){
   float d = 0, d1 = 0;
   if(vivo && !arrivato){
     int j = 0;
     if(e.size()>0) d1 = dist(x,y,e.get(0).GetX(),e.get(0).GetY());
     for(int i=1; i<e.size(); i++){
         d = dist(x,y,e.get(i).GetX(),e.get(i).GetY());
         if(d<d1) {d1 = d; j = i;}
     }
     if(e.size()>0){
       x += (-x+e.get(j).GetX())/d1 * sv;
       y += (-y+e.get(j).GetY())/d1 * sv;
       E = E - 0.01;
       if(dist(x,y,e.get(j).GetX(),e.get(j).GetY()) < 10){
          arrivato = true; 
       }
     }
   }
 }
 
void checkDeath(){
 vivo=E>0;
 if(!vivo) c = color(0);
}
 
 void run(ArrayList<EnergySpot> e){
  move(e);
  checkDeath();
  display();
 }
}
