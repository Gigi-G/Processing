PImage I, If, Ii;
float T = 1;

void setup(){
 size(768,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 image(I,0,0);
 If = scaleF(I,T);
 image(If,256,0);
 Ii = scaleI(I,T);
 image(Ii,512,0);
}

void draw(){
}

PImage scaleF(PImage I, float theta){
   PImage R = createImage(I.width,I.height,RGB);
   R.loadPixels();
   for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(0,0,0); 
   }
   R.updatePixels();
   float x1 = 0, y1 = 0;
   for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      x1 = (x-I.width/2) * theta;
      y1 = (y-I.height/2) * theta;
      R.set(round(x1+I.width/2),round(y1+I.height/2),I.get(x,y));
    }
   }
   return R;
}

PImage scaleI(PImage I, float theta){
 PImage R = createImage(I.width,I.height,RGB);
   R.loadPixels();
   for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(0,0,0); 
   }
   R.updatePixels(); 
   float x1 = 0, y1 = 0;
   for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
     x1 = ((x-I.width/2) / theta);
     y1 = ((y-I.width/2) / theta);
     R.set(x, y, I.get(round(x1+I.width/2),round(y1+I.height/2)));
    }
   }
   return R;
}

void keyPressed(){
 if(key=='+' && T<2){
  T+=0.1;
 }
 else if(key=='-' && T>0.1){
  T-=0.1; 
 }
 setup();
}
