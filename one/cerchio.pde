class Cerchio{
   float x,y,r,sr,sr2;
   color c;
   int a;
   
   Cerchio(float x, float y, float r, float sr, color c, int a){
      this.x = x;
      this.y = y;
      this.r = r;
      this.sr = sr;
      this.sr2 = -sr;
      this.c = c;
      this.a = a;
   }
   
   void display(){
       noFill();
       strokeWeight(2);
       stroke(c);
       ellipse(x,y,r,r);
   }
   
   void move(){
       if(a == 1){
          r+=sr;
          if(r >= 70) a = 2;
       }
       if(a == 2){
          r+= sr2;
          if(r <= 2) a = 3;
       }
       if(a == 3){
          r += sr;
          if(r >= 20) a = 4;
       }
       if(a == 4){
          r += sr2;
          if(r <= 1) a = 1;
       }
   }
   
   void run(){
       move();
       display();
   }
}
