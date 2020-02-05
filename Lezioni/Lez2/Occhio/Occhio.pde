//Mapping ::= cambio di range
//Pupilla
//funzione map fa un mapping map(valore da cambiare, range di input, range di output)

float x,y,xS,yS;

void setup(){
  size(500,500);
  xS = width/2;
  yS = height/2;
}

void draw(){
  background(100);
  fill(255);
  ellipse(xS,yS,50,50);
  x=map(mouseX,0,width,-15,15);
  y=map(mouseY,0,width,-15,15);
  ellipse(xS+x,yS+y,4,4);
}
