PImage I, Ih, Ihm;

void setup(){
  size(768,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 I.filter(GRAY);
 image(I,0,0);
 Ih = hash(I,int(random(1,256)),int(random(1,256)));
 image(Ih,256,0);
 Ihm = hash(I,int(random(1,256)),int(random(1,256)), int(random(3,11)));
 image(Ihm,512,0);
}

void draw(){
  
}

PImage hash(PImage I, int h, int k){
 PImage R = I.copy();
 for(int i=0; i<R.width; i++){
  for(int j=0; j<R.height; j++){
   if(i == k || i == h || j == k || j == h) R.set(i,j,color(0)); 
  }
 }
 return R;
}

PImage hash(PImage I,int h, int k, int n){
 PImage R = I.copy();
 int x = 0, y = 0;
 for(int i=0; i<R.width; i++){
  for(int j=0; j<R.height; j++){
    int d = n/2;
    x = i-d;
    y = j-d;
    PImage p = I.get(x,y,n,n);
    p.loadPixels();
    float max = -1;
    for(int g=0; g<p.pixels.length; g++){
      if(red(p.pixels[g])>max) max = red(p.pixels[g]);
    }
    p.updatePixels();
    R.set(i,j,color(max));
  }
 }
 return hash(R,h,k);
}

void keyPressed(){
 if(key=='R' || key=='r') setup(); 
}
