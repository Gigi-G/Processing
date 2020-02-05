PImage Im, Is, Ie;
float [] H1, H2;

void setup(){
   Im = loadImage("Lenna.png");
   Im.filter(GRAY);
   size(1536,512);
   Is = stretching(Im);
   Ie = equalizza(Im);
   image(Im,0,0);
   image(Is,512,0);
   image(Ie,1024,0);
}

void draw(){
    
}

PImage stretching(PImage I){
   PImage R = I.copy();
   int max = 0;
   int min = 255;
   R.loadPixels();
   for(int i=0; i<R.pixels.length; i++){
      if((int)red(R.pixels[i]) > max) max = (int)red(R.pixels[i]);
      if((int)red(R.pixels[i]) < min) min = (int)red(R.pixels[i]);
   }
   for(int i=0; i<R.pixels.length; i++){
      R.pixels[i] = color(255*((int)red(R.pixels[i]) - min)/(max - min));
   }
   R.updatePixels();
   return R;
}

PImage equalizza(PImage I){
   PImage R = I.copy();
   float[] H = istogramma(R);
   for(int i=1; i<256; i++){
      H[i] += H[i-1]; 
   }
   R.loadPixels();
   for(int i=0; i<R.pixels.length; i++){
       R.pixels[i] = color(255*H[(int)red(I.pixels[i])]);
   }
   R.updatePixels();
   return R;
}

float[] istogramma(PImage I){
   float[] H = new float[256];
   for(int i=0; i<256; i++) H[i] = 0;
   I.loadPixels();
   for(int i=0; i<I.pixels.length; i++){
       H[(int)red(I.pixels[i])]++;
   }
   for(int i=0; i<256; i++){
      H[i] = H[i]/I.pixels.length; 
   }
   I.updatePixels();
   return H;
}
