ArrayList<Quadrati> abs;
float x, y, a;

void setup(){
   size(518,518);
   abs = new ArrayList<Quadrati>();
   x = y = 0;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(254,0,0,a)));
       a-=30;
       y+=148;
   }
   x += 74;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(255,217,0,a)));
       a-=30;
       y+=148;
   }
   x += 74;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(72,255,0,a)));
       a-=30;
       y+=148;
   }
   x += 74;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(0,255,144,a)));
       a-=30;
       y+=148;
   }
   x += 74;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(0,147,254,a)));
       a-=30;
       y+=148;
   }
   x += 74;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(71,0,254,a)));
       a-=30;
       y+=148;
   }
   x += 74;
   y = 0;
   a = 255;
   for(int i=0; i<12; i++){
       abs.add(new Quadrati(x,y,148,1.5,color(255,0,220,a)));
       a-=30;
       y+=148;
   }
}

void draw(){
  background(255);
  Quadrati q = null;
  a = 0;
  for(Quadrati i:abs){
      if(i.getPosY() != 0 && q != null) {
          i.setPosY(q.getY()*a);
          i.setY(q.getY()*(a+1));
      }
      else{
          i.move();
          q = i;
          a = 0;
      }
      i.run();
      a = a+1;
  }
}
