PImage I, Ib;
int k;

void setup(){
 size(512,256);
 I = loadImage("lena.png");
 I.filter(GRAY);
 I.resize(256,256);
 image(I,0,0);
 k = 7;
 Ib = bitplane(I,k);
 image(Ib,256,0);
}

void draw(){
  
}

PImage bitplane(PImage I, int nb){
  PImage R = I.copy();
  int x, r;
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    x = int(red(R.pixels[i]));
    r = (x>>nb)&1;
    R.pixels[i] = color(255*r);
  }
  R.updatePixels();
  return R;
}

void keyPressed(){
 if(key=='+' && k<7){
    Ib = bitplane(I,++k);
    image(Ib,256,0);
 }
 else if(key=='-' && k>0){
    Ib = bitplane(I,--k);
    image(Ib,256,0);
 }
}
