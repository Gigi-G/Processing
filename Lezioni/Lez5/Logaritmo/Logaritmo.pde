PImage Im, ImL, ImG;

void setup(){
 Im = loadImage("Lenna.png");
 Im.resize(256,256);
 size(512,512);
 image(Im,0,0);
 ImL = logaritmo(Im);
 image(ImL,256,0);
 ImG = gamma(Im, 0.35);
 image(ImG,0,256);
}

PImage logaritmo(PImage I){
  PImage R = createImage(I.width,I.height,RGB);
  R.loadPixels();
  I.loadPixels();
  float r,g,b;
  float c = 255/log(256);
  for(int i=0; i<R.pixels.length; i++){
    r=c*log(1+red(I.pixels[i]));
    g=c*log(1+green(I.pixels[i]));
    b=c*log(1+blue(I.pixels[i]));
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  I.updatePixels();
  return R;
}

PImage gamma(PImage I, float gm){
  PImage R = createImage(I.width, I.height, RGB);
  R.loadPixels();
  I.loadPixels();
  float r,g,b;
  float c = 1/pow(255,gm-1);
  for(int i=0; i<R.pixels.length; i++){
    r=c*pow(red(I.pixels[i]),gm);
    g=c*pow(green(I.pixels[i]),gm);
    b=c*pow(blue(I.pixels[i]),gm);
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  I.updatePixels();
  return R;
}
