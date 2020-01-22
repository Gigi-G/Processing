class Orologio{
   int d = 120, sp, x, y, s, m, o;
   
   int ss = 1, sm = 2, so = 3, ls = 50, lm = 40, lo = 30;
   
   color cs = color(0), cm = color(255,0,0), co = color(0,0,255), csp;
   
   Orologio(int sp, color csp, int x, int y, int s, int m, int o){
       this.sp = sp;
       this.x = x;
       this.y = y;
       this.s = s%60;
       this.m = m%60;
       this.o = o%12;
       this.csp = csp;
   }
   
   void display(){
      stroke(csp);
      fill(csp);
      ellipse(x,y,d,d);
      fill(255);
      ellipse(x,y,d-sp,d-sp);
      float X = x - cos(PI/2 + radians(6*s)) * ls;
      float Y = y - sin(PI/2 + radians(6*s)) * ls;
      stroke(cs);
      strokeWeight(ss);
      line(x,y,X,Y);
      X = x - cos(PI/2 + radians(6*m)) * lm;
      Y = y - sin(PI/2 + radians(6*m)) * lm;
      stroke(cm);
      strokeWeight(sm);
      line(x,y,X,Y);
      X = x - cos(PI/2 + radians(30*o)) * lo;
      Y = y - sin(PI/2 + radians(30*o)) * lo;
      strokeWeight(so);
      stroke(co);
      line(x,y,X,Y);
   }
   
   void modify(){
      s+=1;
      if(s == 60){
        m+=1;
        if(m == 60){
           o+=1;
           o = o%12;
        }
        m=m%60;
      }
      s = s%60;
   }
   
   void run(){
      display();
      modify();
   }
}
