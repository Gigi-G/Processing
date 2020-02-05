PImage I, I1, I2;

void setup(){
 size(768,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 I.filter(GRAY);
 image(I,0,0);
 I1 = logOp(I);
 image(I1,256,0);
 I2 = logOp(I,int(random(10,71)),int(random(10,71)));
 image(I2,512,0);
}

void draw(){ 
}

PImage logOp(PImage I){
 PImage R = I.copy();
 R.loadPixels();
 for(int i=0; i<R.pixels.length; i++){
  R.pixels[i] = color(255/log(256)*log(1+red(R.pixels[i]))); 
 }
 R.updatePixels();
 return R;
}

PImage logOp(PImage I, int h, int k){
  PImage R = I.copy();
  PImage tmp = createImage(h,k,RGB);
  tmp.loadPixels();
  for(int i=0; i<tmp.pixels.length; i++) tmp.pixels[i] = color(0);
  tmp.updatePixels();
  float x = random(0,I.width);
  float y = random(0,I.height);
  float dx = x-h/2;
  float dy = y-k/2;
  R.set(int(dx),int(dy),tmp);
  return logOp(R);
}

void keyPressed(){
 if(key=='R' || key=='r') setup(); 
}
