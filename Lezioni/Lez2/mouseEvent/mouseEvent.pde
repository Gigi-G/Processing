//Eventi del mouse
color b;
int l;
boolean go = true;

void setup(){
  b = color(0,255,0);
  size(500,500);
  l= 50;
}

void draw(){
  background(b);
  noStroke();
  for(int y=0; y<height; y+=l){
     for(int x=0; x<width; x+=l){
         fill(random(256),130);
         rect(x+random(-5,6),y+random(-5,6),l,l);
     }
  } 
}

void mousePressed(){
  //noLoop();
  print("P");
}

void mouseReleased(){
  //loop();
  print("R");
}

void mouseClicked(){
  /*if(mouseButton==LEFT){
      b = color(random(256),random(256),random(256));
   }
  if(mouseButton == RIGHT){
      l++;
  }
  go = !go;
  if(go) loop();
  else noLoop();*/
  print("C");
}
