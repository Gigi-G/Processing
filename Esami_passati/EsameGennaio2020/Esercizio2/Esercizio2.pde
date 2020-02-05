PImage I, I2, I3;
void setup(){
 size(768,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 I.filter(GRAY);
 image(I,0,0);
 I2 = linee(I,int(random(1,256)),int(random(1,256)));
 image(I2,256,0);
 I3 = linee(I,int(random(1,256)),int(random(1,256)),int(random(5,15)));
 image(I3,512,0);
}

void draw(){
  
}

PImage linee(PImage I, int h, int k){
  PImage R = I.copy();
  color c = color(255,255,0);
  for(int x=0; x<I.width; x++){
   for(int y=0; y<I.height; y++){
    if(x == h || y == h || x == k || y == k) R.set(x,y,c); 
   }
  }
  for(int x=0; x<I.width; x++){
    R.set(x,x,c); 
  }
  return R;
}

PImage linee(PImage I, int h, int k, int n){
 PImage R = I.copy();
 for(int x=0; x<I.width; x++){
   for(int y=0; y<I.height; y++){
     PImage tmp = I.get((int)(x-n/2.0),(int)(y-n/2.0),n,n);
     tmp.loadPixels();
     float max = 0;
     for(int i=0; i<tmp.pixels.length; i++){
       if(red(tmp.pixels[i])>max) max = red(tmp.pixels[i]);
     }
     tmp.updatePixels();
     R.set(x,y,color(max));
   }
 }
 return linee(R,h,k);
}

void keyPressed(){
 if(key=='R' || key == 'r') setup(); 
}
