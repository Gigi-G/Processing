ArrayList<Cerchio> abs;
color f = color(124,94,191), b = color(138,116,189), c = color(131,105,189), d = color(125,98,186), e = color(118,89,184);
void setup(){
 size(500,370); 
 abs = new ArrayList<Cerchio>();
 
 //Primo step
 abs.add(new Cerchio(40,40,10,1,color(174,127,145),4));
 abs.add(new Cerchio(75,40,10,1,color(174,127,145),4));
 abs.add(new Cerchio(110,40,10,1,color(174,127,145),4));
 abs.add(new Cerchio(145,40,10,1,color(174,127,145),4));
 abs.add(new Cerchio(180,40,8,1,color(174,127,145),4));
 abs.add(new Cerchio(215,40,6,1,color(174,127,145),4));
 abs.add(new Cerchio(250,40,4,1,color(174,127,145),4));
 abs.add(new Cerchio(285,40,3,1,color(174,127,145),4));
 abs.add(new Cerchio(320,40,2,1,color(174,127,145),1));
 abs.add(new Cerchio(355,40,3,1,color(174,127,145),1));
 abs.add(new Cerchio(390,40,4,1,color(174,127,145),1));
 abs.add(new Cerchio(425,40,6,1,color(174,127,145),1));
 abs.add(new Cerchio(460,40,10,1,color(174,127,145),1));
 //Fine primo step
 
 //Secondo step
 abs.add(new Cerchio(40,75,30,1,color(174,127,158),4));
 abs.add(new Cerchio(75,75,35,1,color(174,127,158),4));
 abs.add(new Cerchio(110,75,40,1,color(174,127,158),4));
 abs.add(new Cerchio(145,75,45,1,color(174,127,158),4));
 abs.add(new Cerchio(180,75,50,1,color(174,127,158),4));
 abs.add(new Cerchio(215,75,55,1,color(174,127,158),4));
 abs.add(new Cerchio(250,75,60,1,color(174,127,158),4));
 abs.add(new Cerchio(285,75,65,1,color(174,127,158),4));
 abs.add(new Cerchio(320,75,65,1,color(174,127,158),4));
 abs.add(new Cerchio(355,75,65,1,color(174,127,158),4));
 abs.add(new Cerchio(390,75,66,1,color(174,127,158),4));
 abs.add(new Cerchio(425,75,68,1,color(174,127,158),4));
 abs.add(new Cerchio(460,75,70,1,color(174,127,158),4));
 //Fine secondo step
 
 //Terzo step
 abs.add(new Cerchio(40,110,70,1,color(174,127,174),2));
 abs.add(new Cerchio(75,110,60,1,color(174,127,174),2));
 abs.add(new Cerchio(110,110,55,1,color(174,127,174),2));
 abs.add(new Cerchio(145,110,50,1,color(174,127,174),2));
 abs.add(new Cerchio(180,110,45,1,color(174,127,174),2));
 abs.add(new Cerchio(215,110,40,1,color(174,127,174),2));
 abs.add(new Cerchio(250,110,35,1,color(174,127,174),2));
 abs.add(new Cerchio(285,110,30,1,color(174,127,174),2));
 abs.add(new Cerchio(320,110,25,1,color(174,127,174),2));
 abs.add(new Cerchio(355,110,20,1,color(174,127,174),2));
 abs.add(new Cerchio(390,110,15,1,color(174,127,174),2));
 abs.add(new Cerchio(425,110,10,1,color(174,127,174),2));
 abs.add(new Cerchio(460,110,5,1,color(174,127,174),2));
 //Fine terzo step
 
 //Quarto Step
 abs.add(new Cerchio(40,145,10,1,color(159,127,174),4));
 abs.add(new Cerchio(75,145,8,1,color(159,127,174),4));
 abs.add(new Cerchio(110,145,6,1,color(159,127,174),4));
 abs.add(new Cerchio(145,145,4,1,color(159,127,174),4));
 abs.add(new Cerchio(180,145,2,1,color(159,127,174),4));
 abs.add(new Cerchio(215,145,4,1,color(159,127,174),1));
 abs.add(new Cerchio(250,145,6,1,color(159,127,174),1));
 abs.add(new Cerchio(285,145,8,1,color(159,127,174),1));
 abs.add(new Cerchio(320,145,10,1,color(159,127,174),1));
 abs.add(new Cerchio(355,145,15,1,color(159,127,174),1));
 abs.add(new Cerchio(390,145,20,1,color(159,127,174),1));
 abs.add(new Cerchio(425,145,30,1,color(159,127,174),1));
 abs.add(new Cerchio(460,145,40,1,color(159,127,174),1));
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
 abs.add(new Cerchio(40,250,70,1,d,2));
 abs.add(new Cerchio(75,250,60,1,d,2));
 abs.add(new Cerchio(110,250,55,1,d,2));
 abs.add(new Cerchio(145,250,50,1,d,2));
 abs.add(new Cerchio(180,250,45,1,d,2));
 abs.add(new Cerchio(215,250,40,1,d,2));
 abs.add(new Cerchio(250,250,35,1,d,2));
 abs.add(new Cerchio(285,250,30,1,d,2));
 abs.add(new Cerchio(320,250,25,1,d,2));
 abs.add(new Cerchio(355,250,20,1,d,2));
 abs.add(new Cerchio(390,250,15,1,d,2));
 abs.add(new Cerchio(425,250,10,1,d,2));
 abs.add(new Cerchio(460,250,5,1,d,2));
 //Fine settimo step
 
 //Ottavo step (Uguale al secondo)
 abs.add(new Cerchio(40,285,30,1,e,4));
 abs.add(new Cerchio(75,285,35,1,e,4));
 abs.add(new Cerchio(110,285,40,1,e,4));
 abs.add(new Cerchio(145,285,45,1,e,4));
 abs.add(new Cerchio(180,285,50,1,e,4));
 abs.add(new Cerchio(215,285,55,1,e,4));
 abs.add(new Cerchio(250,285,60,1,e,4));
 abs.add(new Cerchio(285,285,65,1,e,4));
 abs.add(new Cerchio(320,285,65,1,e,4));
 abs.add(new Cerchio(355,285,65,1,e,4));
 abs.add(new Cerchio(390,285,66,1,e,4));
 abs.add(new Cerchio(425,285,68,1,e,4));
 abs.add(new Cerchio(460,285,70,1,e,4));
 //Fine ottavo step
 
 //Nono step (Uguale al primo)
 abs.add(new Cerchio(40,320,10,1,f,4));
 abs.add(new Cerchio(75,320,10,1,f,4));
 abs.add(new Cerchio(110,320,10,1,f,4));
 abs.add(new Cerchio(145,320,10,1,f,4));
 abs.add(new Cerchio(180,320,8,1,f,4));
 abs.add(new Cerchio(215,320,6,1,f,4));
 abs.add(new Cerchio(250,320,4,1,f,4));
 abs.add(new Cerchio(285,320,3,1,f,4));
 abs.add(new Cerchio(320,320,2,1,f,1));
 abs.add(new Cerchio(355,320,3,1,f,1));
 abs.add(new Cerchio(390,320,4,1,f,1));
 abs.add(new Cerchio(425,320,6,1,f,1));
 abs.add(new Cerchio(460,320,10,1,f,1));
 //Fine nono step
 frameRate(30);
}

void draw(){
  background(255);
  for(Cerchio i:abs){
    i.run(); 
  }
}
