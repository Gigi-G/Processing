ArrayList<Cerchio> abs;
color f = color(124,94,191), b = color(138,116,189), c = color(131,105,189), d = color(125,98,186), e = color(118,89,184), a = color(174,127,145), g = color(174,127,158), h = color(174,127,174), i = color(159,127,174);
void setup(){
 size(500,370); 
 abs = new ArrayList<Cerchio>();
 
 //Primo step
 int x = 40;
 int r = 10;
 for(int j = 0; j<4; j++){
     abs.add(new Cerchio(x,40,r,1,a,4));
     x+=35;
 }
 r-=2;
 for(int j = 0; j<4; j++){
     abs.add(new Cerchio(x,40,r,1,a,4));
     x+=35;
     r-=2;
 }
 r-=2;
 for(int j = 0; j<5; j++){
     abs.add(new Cerchio(x,40,r,1,a,1));
     x+=35;
 }
 //Fine primo step
 
 //Secondo step
 x = 40;
 r = 30;
 for(int j=0; j<10; j++){
    if(r<65){
        abs.add(new Cerchio(x,75,r,1,g,4));
        r+=5;
    }
    else if(r==65) {
        for(int v = 0; v<3; v++) {abs.add(new Cerchio(x,75,r,1,g,4)); x+=35;}
        r+=1;
        abs.add(new Cerchio(x,75,r,1,g,4));
    }
    else{
       abs.add(new Cerchio(x,75,r,1,g,4));
       r+=2;
    }
    x+=35;
 }
 //Fine secondo step
 
 //Terzo step
 x = 75;
 r = 60;
 abs.add(new Cerchio(40,110,70,1,h,2));
 for(int j=0; j<12; j++){
     abs.add(new Cerchio(x,110,r,1,h,2));
     x+=35;
     r-=5;
 }
 //Fine terzo step
 
 //Quarto Step
 abs.add(new Cerchio(40,145,10,1,i,4));
 abs.add(new Cerchio(75,145,8,1,i,4));
 abs.add(new Cerchio(110,145,6,1,i,4));
 abs.add(new Cerchio(145,145,4,1,i,4));
 abs.add(new Cerchio(180,145,2,1,i,4));
 abs.add(new Cerchio(215,145,4,1,i,1));
 abs.add(new Cerchio(250,145,6,1,i,1));
 abs.add(new Cerchio(285,145,8,1,i,1));
 abs.add(new Cerchio(320,145,10,1,i,1));
 abs.add(new Cerchio(355,145,15,1,i,1));
 abs.add(new Cerchio(390,145,20,1,i,1));
 abs.add(new Cerchio(425,145,30,1,i,1));
 abs.add(new Cerchio(460,145,40,1,i,1));
 //Fine quarto step
 
 //Quinto Step
 abs.add(new Cerchio(40,180,70,1,b,4));
 abs.add(new Cerchio(75,180,68,1,b,4));
 abs.add(new Cerchio(110,180,66,1,b,4));
 abs.add(new Cerchio(145,180,64,1,b,4));
 abs.add(new Cerchio(180,180,60,1,b,4));
 abs.add(new Cerchio(215,180,56,1,b,4));
 abs.add(new Cerchio(250,180,54,1,b,4));
 abs.add(new Cerchio(285,180,50,1,b,4));
 abs.add(new Cerchio(320,180,46,1,b,4));
 abs.add(new Cerchio(355,180,44,1,b,4));
 abs.add(new Cerchio(390,180,40,1,b,4));
 abs.add(new Cerchio(425,180,30,1,b,4));
 abs.add(new Cerchio(460,180,20,1,b,4));
 //Fine quinto step
 
 //Sesto Step (Uguale al quarto)
 abs.add(new Cerchio(40,215,10,1,c,4));
 abs.add(new Cerchio(75,215,8,1,c,4));
 abs.add(new Cerchio(110,215,6,1,c,4));
 abs.add(new Cerchio(145,215,4,1,c,4));
 abs.add(new Cerchio(180,215,2,1,c,4));
 abs.add(new Cerchio(215,215,4,1,c,1));
 abs.add(new Cerchio(250,215,6,1,c,1));
 abs.add(new Cerchio(285,215,8,1,c,1));
 abs.add(new Cerchio(320,215,10,1,c,1));
 abs.add(new Cerchio(355,215,15,1,c,1));
 abs.add(new Cerchio(390,215,20,1,c,1));
 abs.add(new Cerchio(425,215,30,1,c,1));
 abs.add(new Cerchio(460,215,40,1,c,1));
 //Fine sesto step
 
 //Settimo step (Uguale al terzo step)
 x = 75;
 r = 60;
 abs.add(new Cerchio(40,250,70,1,d,2));
 for(int j=0; j<12; j++){
     abs.add(new Cerchio(x,250,r,1,d,2));
     x+=35;
     r-=5;
 }
 //Fine settimo step
 
 //Ottavo step (Uguale al secondo)
 x = 40;
 r = 30;
 for(int j=0; j<10; j++){
    if(r<65){
        abs.add(new Cerchio(x,285,r,1,e,4));
        r+=5;
    }
    else if(r==65) {
        for(int v = 0; v<3; v++) {abs.add(new Cerchio(x,285,r,1,e,4)); x+=35;}
        r+=1;
        abs.add(new Cerchio(x,285,r,1,e,4));
    }
    else{
       abs.add(new Cerchio(x,285,r,1,e,4));
       r+=2;
    }
    x+=35;
 }
 //Fine ottavo step
 
 //Nono step (Uguale al primo)
 x = 40;
 r = 10;
 for(int j = 0; j<4; j++){
     abs.add(new Cerchio(x,320,r,1,f,4));
     x+=35;
 }
 r-=2;
 for(int j = 0; j<4; j++){
     abs.add(new Cerchio(x,320,r,1,f,4));
     x+=35;
     r-=2;
 }
 r-=2;
 for(int j = 0; j<5; j++){
     abs.add(new Cerchio(x,320,r,1,f,1));
     x+=35;
 }
 //Fine nono step
 frameRate(30);
}

void draw(){
  background(255);
  for(Cerchio i:abs){
    i.run(); 
  }
}
