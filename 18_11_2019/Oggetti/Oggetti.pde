ArrayList<Ball> abs;

void setup(){
  background(0);
  size(500,500);
  abs = new ArrayList<Ball>();
}

void draw(){
  fill(0,40);
  rect(0,0,width,height);
  /*for(int i=0; i<abs.size(); i++){
    abs.get(i).run();
  }*/
  for(Ball i:abs){
   i.run(); 
  }
}

void keyPressed(){ 
  if(key=='n' || key=='N'){
    abs.add(new Ball(random(20,width-20),random(20,height-20),random(10,40),random(1,10),random(1,10)));
  }
}
