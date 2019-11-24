ArrayList<laser> abs;
ArrayList<laser> ab;
int y = 1, a = 1, b = 1, b2 = 1, q = -1000, r = 1000, q1 = -1000, r1 = 1000, f = 0, g = 0, v = 0;

void setup(){
 size(500,500);
 abs = new ArrayList<laser>();
 ab = new ArrayList<laser>();
 for(int i=0; i<10; i++){
   ab.add(new laser((int)random(0,width),(int)random(0,height),80,4));
 }
 for(int i=0; i<120; i++){
   abs.add(new laser((int)random(0,width),(int)random(0,height),20,1));
 }
 for(int i=0; i<20; i++){
   abs.add(new laser((int)random(0,width),(int)random(0,height),40,2));
 }
}

void draw(){
  fill(64,64,64,70);
  triangle(width/2+1000,height/2+120-q1,width/2,height/2-r1,width/2+70-1000,height/2+120-q1);
  for(laser a : ab){
      a.run(); 
   }
   fill(247,177,178);
   triangle(width/2+1000,height/2+120-q,width/2,height/2-r,width/2+70-1000,height/2+120-q);
   if(b<18){
     q1 = -1000;
     r1 = 1000;
     b2 = 1;
     for(laser a : abs){
      a.run(); 
     }
     noStroke();
     fill(64,64,64);
     triangle(width/2-70,height/2+120+y,width/2,height/2+y,width/2+70,height/2+120+y);
     if(y>50){
      a = -1;
      y=y+a;
     }
     else if(y<-55){
       a = 0;
     }
     else{
      y=y+a; 
     }
     if(a==0 && b<10){
       y=y+1;
       b++;
     }
     if(b>=10 && b<18){
       y=y-1;
       b++;
     }
 }
 else {
   fill(247,177,178);
   if(b>=18 && b<45){
     a = 2;
     q-=50;
     r-=50;
     f = 10;
     g = 100;
     v = 60;
     for(laser a : abs){
      if(a.PosX>=width/2-70 && a.PosX<=width/2+70 && a.PosY>=height/2-r) a.run();
     }
     noStroke();
     fill(64,64,64);
     triangle(width/2-70,height/2+120+y,width/2,height/2+y,width/2+70,height/2+120+y);
     b++;
   }
   triangle(width/2-70,height/2+120+y,width/2,height/2+y,width/2+70,height/2+120+y);
   if(y>50){
    a = -2;
    y=y+a;
   }
   else if(y<-55){
     a = 0;
   }
   else{
    y=y+a;
    if(a == -2){
      triangle(width/2-70+f,height/2+120+y+v,width/2,height/2+y+g,width/2+70-f,height/2+120+y+v);
     f+=10;
     g += 55;
     v += 45;
     
     if(f>70){
      f = 10;
      g = 100;
      v = 60;
     } 
    }
   }
   if(a==0 && b2<10){
     y=y+2;
     b2++;
     triangle(width/2-70+f,height/2+120+y+v,width/2,height/2+y+g,width/2+70-f,height/2+120+y+v);
     f+=10;
     g += 55;
     v += 45;
     
     if(f>70){
      f = 10;
      g = 100;
      v = 60;
     }
   }
   if(b2>=10 && b2<18){
     y=y-2;
     b2++;
     triangle(width/2-70+f,height/2+120+y+v,width/2,height/2+y+g,width/2+70-f,height/2+120+y+v);
     f+=10;
     g += 55;
     v += 45;
     
     if(f>70){
      f = 10;
      g = 100;
      v = 60;
     }
   }
   if(b2>=18 && b2<100){
     triangle(width/2-70+f,height/2+120+y+v,width/2,height/2+y+g,width/2+70-f,height/2+120+y+v);
     f+=10;
     g += 55;
     v += 45;
     
     if(f>70){
      f = 10;
      g = 100;
      v = 60;
     }
     b2++;
   }
   if(b2>=100 && b2<123){
    fill(247,177,178);
    triangle(width/2+1000,height/2+120-q,width/2,height/2-r,width/2+70-1000,height/2+120-q);
    a = 1;
    y = 1;
    b = 1;
    b2++;
    q = -1000;
    r = 1000;
    fill(64,64,64);
    triangle(width/2+1000,height/2+120-q1,width/2,height/2-r1,width/2+70-1000,height/2+120-q1);
   }
 }
}
