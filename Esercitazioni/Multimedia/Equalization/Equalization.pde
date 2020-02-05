PImage I, Ieq;

void setup(){
 size(512,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 I.filter(GRAY);
 image(I,0,0);
 Ieq = equalization(I);
 image(Ieq,256,0);
}

float[] histogram(PImage I){
 float[] h = new float[256];
 for(int i=0; i<256; i++) h[i] = 0;
 I.loadPixels();
 for(int i=0; i<I.pixels.length; i++){
  h[int(red(I.pixels[i]))]++; 
 }
 //necessario per normalizzare
 for(int i=0; i<256; i++){
  h[i] /= I.pixels.length; 
 }
 I.updatePixels();
 return h;
}

PImage equalization(PImage I){
 PImage R = I.copy();
 float[] h = histogram(I);
 for(int i=1; i<h.length; i++){
    h[i] += h[i-1];
 }
 R.loadPixels();
 for(int i=0; i<R.pixels.length; i++){
   R.pixels[i] = color(255*h[int(red(R.pixels[i]))]);
 }
 R.updatePixels();
 return R;
}
