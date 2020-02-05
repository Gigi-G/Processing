PImage Im, Ip, Ir;

void setup(){
  background(0);
  Im = loadImage("Lenna.png");
  Im.filter(GRAY);
  size(1536,512);
  
  Ip=Im.copy();
  Ip.resize(256,256);
  Ip.resize(512,512);
  
  Ir=Im.copy();
  Ir.resize(256,256);
  Ir = replication2x(Ir);
  image(Im,0,0);
  image(Ip,512,0);
  image(Ir,1024,0);
  println("MSE resize di Original: " + MSE(Im,Im));
  println("MSE resize di Processing: " + MSE(Im,Ip));
  println("MSE resize di Replication: " + MSE(Im,Ir));
  println("PSNR resize di Original: " + PSNR(Im,Im));
  println("PSNR resize di Processing: " + PSNR(Ir,Im));
  println("PSNR resize di Replication: " + PSNR(Ip,Im));
}

void draw(){
  
}

float MSE(PImage I1, PImage I2){
 float r = 0;
 I1.loadPixels();
 I2.loadPixels();
 for(int i=0; i<I1.pixels.length; i++){
   r += pow(red(I1.pixels[i]) - red(I2.pixels[i]),2);
 }
 r = r/I1.pixels.length;
 return r;
}

float PSNR(PImage I1, PImage I2){
 float mse = MSE(I1,I2);
 return 10*log(pow(255,2)/mse);
}

PImage replication2x(PImage I){
  PImage R = createImage(2*I.width,2*I.height,RGB);
  for(int x=0; x<I.width; x++){
   for(int y=0; y<I.height; y++){
     R.set(2*x,2*y,I.get(x,y));
     R.set(2*x+1,2*y,I.get(x,y));
     R.set(2*x,2*y+1,I.get(x,y));
     R.set(2*x+1,2*y+1,I.get(x,y));
   }
  }
  return R;
}
