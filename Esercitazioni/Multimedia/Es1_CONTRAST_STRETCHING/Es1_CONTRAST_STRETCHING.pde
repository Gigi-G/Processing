PImage I, Is;

void setup(){
 size(512,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 image(I,0,0);
 Is = stretching(I);
 image(Is,256,0);
}

void draw(){
  
}

PImage stretching(PImage I){
 PImage R = I.copy();
 float rmin = 256, rmax = -1, bmin = 256, bmax = -1, gmin = 256, gmax = -1;
 R.loadPixels();
 for(int i=0; i<R.pixels.length; i++){
  if(red(R.pixels[i])<rmin) rmin = red(R.pixels[i]);
  if(red(R.pixels[i])>rmax) rmax = red(R.pixels[i]);
  if(green(R.pixels[i])<gmin) gmin = green(R.pixels[i]);
  if(green(R.pixels[i])>gmax) gmax = green(R.pixels[i]);
  if(blue(R.pixels[i])<bmin) bmin = blue(R.pixels[i]);
  if(blue(R.pixels[i])>bmax) bmax = blue(R.pixels[i]);
 }
 for(int i=0; i<R.pixels.length; i++){
   R.pixels[i] = color(map(red(R.pixels[i]),rmin,rmax,0,255),map(green(R.pixels[i]),gmin,gmax,0,255),map(blue(R.pixels[i]),bmin,bmax,0,255));
 }
 R.updatePixels();
 return R;
}
