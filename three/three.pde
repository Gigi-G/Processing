int x = 10, y = 10, x2 = 0, y2= 0, c1 = 12, c2 = 12, a = 1, b = 1;
void setup(){
  size(600,600);
  frameRate(15);
}

void draw(){
 strokeWeight(20);
 background(255);
 //Quadrante destro superiore
 y = 10;
 c2 = 12 * a - b;
 for(int i=0; i<12; i++){
  x = 10;
  c1 = 12 * a - b;
  for(int j=0; j<12; j++){
    line(x,y,x+c1,y+c2);
    x+=25;
    c1 = c1 - a;
  }
  y+=25;
  c2 = c2 - a;
 }
 //Quadrante destro superiore
 y = 10;
 x2 = x;
 c2 = 12 * a - b;
 for(int i=0; i<12; i++){
   x = x2;
   c1 = -1 * a + b;
  for(int j=0; j<12; j++){
    line(x,y,x+c1,y+c2);
    x+=25;
    c1 = c1 - a;
  }
  y+=25;
  c2 = c2 - a;
 }
 y2 = y;
 c2 = -1 * a + b;
 for(int i=0; i<12; i++){
  x = 10;
  c1 = 12 * a - b;
  for(int j=0; j<12; j++){
    line(x,y,x+c1,y+c2);
    x+=25;
    c1 = c1 - a;
  }
  y+=25;
  c2 = c2 - a;
 }
 y = y2;
 c2 = -1 * a + b;
 for(int i=0; i<12; i++){
  x = x2;
  c1 = -1 * a + b;
  for(int j=0; j<12; j++){
    line(x,y,x+c1,y+c2);
    x+=25;
    c1 = c1 - a;
  }
  y+=25;
  c2 = c2 - a;
 }
 b+=a;
 if(b>=5){
  b = -1;
  a = -a;
 }
 else if(b<=-5){
  b = 1;
  a = -a;
 }
}
