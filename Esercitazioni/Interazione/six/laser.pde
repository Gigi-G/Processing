class laser{
 int PosX, PosY, dim, sp;
 
 laser(int PosX, int PosY, int dim, int sp){
  this.PosX = PosX;
  this.PosY = PosY;
  this.dim = dim;
  this.sp = sp;
 }
 
 void display(){
  strokeWeight(2);
  if(sp == 1){
    stroke(247,157,168);
  }
  else if(sp == 2){
    stroke(255);
  }
  else{
    stroke(247,177,178); 
  }
  line(PosX,PosY,PosX,PosY+dim);
 }
 
 void move(){
  PosY+=sp; 
 }
 
 void respawn(){
  if(PosY>height){ 
    PosY=(int)random(0,10);
    PosX=(int)random(0,width);
  }
 }
 
 void run(){
  move();
  respawn();
  display();
 }
}
