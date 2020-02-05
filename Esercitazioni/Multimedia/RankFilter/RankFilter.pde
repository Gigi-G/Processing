PImage I, I2, I3, I4;
int N = 1;

void setup(){
 background(0);
 size(1024,280);
 I = loadImage("lena.png");
 I.filter(GRAY);
 I.resize(256,256);
 image(I,0,0);
 I2 = massimo(I,N);
 image(I2,256,0);
 I3 = mediano(I,N);
 image(I3,512,0);
 I4 = minimo(I,N);
 image(I4,768,0);
 text("Originale",10,270);
 text("Massimo",276,270);
 text("Mediano",522,270);
 text("Minimo",778,270);
 text("N = "+N,980,270);
}

void draw(){
  
}

PImage massimo(PImage I, int n){
 PImage R = createImage(I.width,I.height,RGB);
 for(int x=0; x<I.width; x++){
  for(int y=0; y<I.height; y++){
    PImage tmp = I.get(x-n/2,y-n/2,n,n);
    float max = -1;
    tmp.loadPixels();
    for(int i=0; i<tmp.pixels.length; i++){
     if(red(tmp.pixels[i])>max) max = red(tmp.pixels[i]);
    }
    tmp.updatePixels();
    R.set(x,y,color(max));
  }
 }
 return R;
}

PImage mediano(PImage I, int n){
 PImage R = createImage(I.width,I.height,RGB);
 for(int x=0; x<I.width; x++){
  for(int y=0; y<I.height; y++){
     PImage tmp = I.get(x-n/2,y-n/2,n,n);
     tmp.loadPixels();
     float[] a = new float[tmp.pixels.length];
     for(int i=0; i<tmp.pixels.length; i++){
       a[i] = red(tmp.pixels[i]);
     }
     a = sort(a);
     if(tmp.pixels.length%2 == 1){
       R.set(x,y,color(a[tmp.pixels.length/2]));
     }
     else{
       R.set(x,y,color((a[tmp.pixels.length/2]+a[tmp.pixels.length/2-1])/2));
     }
     tmp.loadPixels();
  }
 }
 return R;
}

PImage minimo(PImage I, int n){
 int off = n/2;
 PImage R = createImage(I.width+off*2,I.height+off*2,RGB);
 for(int x=0; x<R.width; x++){
  for(int y=0; y<R.height; y++){
    R.set(x,y,color(255)); 
  }
 }
 R.set(off,off,I);
 PImage r = I.copy();
 PImage tmp;
 for(int x=off; x<R.width-off; x++){
  for(int y=off; y<R.height-off; y++){
    tmp = R.get(x-off,y-off,n,n);
    float min = 255;
    tmp.loadPixels();
    for(int i=0; i<tmp.pixels.length; i++){
     if(red(tmp.pixels[i])<min) min = red(tmp.pixels[i]); 
    }
    tmp.updatePixels();
    r.set(x-off,y-off,color(min));
  }
 }
 return r;
}

void keyPressed(){
 if(key=='+' && N<20) {
   N++;
   setup();
 }
 if(key=='-' && N>1){
  N--;
  setup();
 }
}
