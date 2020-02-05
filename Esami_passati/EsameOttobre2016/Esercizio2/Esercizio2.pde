PImage I, Iqu, Iqn;
int N = 10;

void setup(){
 background(0);
 size(768,280);
 I = loadImage("lena.png");
 I.filter(GRAY);
 I.resize(256,256);
 image(I,0,0);
 Iqu = uniQuant(I,N);
 image(Iqu,256,0);
 Iqn = logQuant(I,N);
 image(Iqn,512,0);
 text("Originale",10,268);
 text("Uniforme",266,268);
 text("Logaritmica",522,268);
 text("N = " + N,700,268);
}

void draw(){
}

PImage uniQuant(PImage I, int k){
  PImage R = I.copy();
  float min = 257, max = -1;
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(floor(red(R.pixels[i])*k/256));
    if(red(R.pixels[i])<min) min = red(R.pixels[i]);
    if(red(R.pixels[i])>max) max = red(R.pixels[i]);
  }
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(255*(red(R.pixels[i])-min)/(max-min)); 
  }
  R.updatePixels();
  return R;
}

PImage logQuant(PImage I, int k){
  PImage R = I.copy();
  float min = 257, max = -1;
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(log(red(R.pixels[i]))*k/log(256));
    if(red(R.pixels[i])<min) min = red(R.pixels[i]);
    if(red(R.pixels[i])>max) max = red(R.pixels[i]);
  }
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(255*(red(R.pixels[i])-min)/(max-min)); 
  }
  R.updatePixels();
  return R;
}

void keyPressed(){
 if(key=='+' && N<256) N++;
 else if(key=='-' && N>2) N--;
 setup();
}
