ArrayList<Linee> abs;
ArrayList<Quadrati> q;
Timer t;
int x,y,a;

void setup(){
   size(500,500);
   restart();
}

void draw(){
   if(a == 3) restart();
   rectMode(CORNERS);
   fill(255,50);
   rect(-2,-2,width+2,height+2);
   if(a == 0){
     for(Linee i:abs){
        i.run(); 
        if(i.getX() == 0 || i.getY() == 0) a = 1;
     }
   }
   if(a == 1) {
       quadro();
   }
   if(a == 2){
        rectMode(CORNER);
        for(Quadrati i:q){
            i.run(); 
        }
        t.Tick();
        if(t.isStop() == 1) a = 3;
   }
}

void restart() {
   a = 0;
   x = y = 0;
   abs = new ArrayList<Linee>();
   for(int i=0; i<8; i++){
      abs.add(new Linee(120+x,0,120+x,0,0,4));
      x+=30;
   }
   x = y = 0;
   for(int i=0; i<8; i++){
      abs.add(new Linee(0,120+y,0,120+y,4,0));
      y+=30;
   }
   x = y = 0;
   for(int i=0; i<8; i++){
      abs.add(new Linee(150+x,height,150+x,height,0,-4));
      x+=30;
   }
   x = y = 0;
   for(int i=0; i<8; i++){
      abs.add(new Linee(width,150+y,width,150+y,-4,0));
      y+=30;
   }
   background(255);
   rectMode(CORNERS);
   fill(255);
   rect(-2,-2,width+2,height+2);
}

void quadro(){
    rectMode(CORNER);
    a = 2;
    q = new ArrayList<Quadrati>();
    x = y = 0;
    for(int i=0; i<8; i++){
        x = 0;
        for(int j=0; j<8; j++){
           q.add(new Quadrati(120+x,120+y,30,random(-0.5,0.5),random(-0.5,0.5)));
           x = x + 30;
        }
        y = y + 30;
    }
    t = new Timer(3);
    t.Start();
}
