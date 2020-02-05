PImage I, Ir, Iri;

void setup(){
 size(768,256);
 I = loadImage("lena.png");
 Iri = loadImage("lena.png");
 Ir = loadImage("lena.png");
 //Processing resize
 I.resize(256,256);
 I.resize(128,128);
 I.resize(256,256);
 //
 Ir.resize(256,256);
 Ir.resize(128,128);
 Iri.resize(256,256);
 I.filter(GRAY);
 Iri.filter(GRAY);
 Ir.filter(GRAY);
 image(Iri,0,0);
 image(I,256,0);
 Ir = zoom2x(Ir);
 image(Ir,512,0);
 println("MSE_p = " + MSE(I,Iri));
 println("PSNR_p = " + PSNR(I,Iri));
 println("MSE = " + MSE(Ir,Iri));
 println("PSNR = " + PSNR(Ir,Iri));
 println("MSE_o = " + MSE(Iri,Iri)); //original image
 println("PSNR_o = " + PSNR(Iri,Iri)); //original image
}

PImage zoom2x(PImage I){
 PImage R = createImage(I.width*2,I.height*2,RGB);
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

float MSE(PImage I, PImage F){
 float mse = 0;
 for(int x=0; x<I.width; x++){
   for(int y=0; y<I.height; y++){
      mse += pow(red(I.get(x,y))-red(F.get(x,y)),2);
   }
 }
 
 return mse/(I.width*I.height);
}

float PSNR(PImage I, PImage F){
  float psnr = 0;
  float mse = MSE(I,F);
  psnr = 10*log(255*255/mse)/log(10);
  return psnr;
}
