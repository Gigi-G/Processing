//random(x) [0,x[ x->float
//random(10,30) [10,30[

int x = 40, i = 1, j = 1;
float a = QUARTER_PI, b = TWO_PI - QUARTER_PI;
void setup(){
  background(100);
  size(480,120);
  arc(x,60,80,80,a,b);
  frameRate(80);
}

void draw(){
  background(100);
  if(x > width-40){
    i = -1;
    a += PI;
    b += PI;
    arc(x,60,80,80,a,b);
  }
  if(x < 40){
    i = 1;
    a = a - PI;
    b = b - PI;
    arc(x,60,80,80,a,b);
  }
  x = x + i;
  a-= j*radians(1);
  b+= j*radians(1);
  if(i==1){
    if(b >= TWO_PI && a <=0){
       j=-1; 
    }
    if(b <= TWO_PI - QUARTER_PI && a >= QUARTER_PI ){
       j=1; 
    }
  }
  else{
    if(b >= TWO_PI + PI && a <=0 + PI){
       j=-1; 
    }
    if(b <= TWO_PI - QUARTER_PI + PI && a >= QUARTER_PI + PI ){
       j=1; 
    }
  }
  arc(x,60,80,80,a,b);
}
