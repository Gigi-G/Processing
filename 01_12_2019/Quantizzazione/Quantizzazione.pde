PImage Im, Iq;
int k;

void setup(){
 size(1024,512);
 Im = loadImage("Lenna.png");
 Im.filter(GRAY);
 k = 2;
 image(Im,0,0);
 Iq=quantizza(Im,k);
 image(Iq,512,0);
}

void draw(){
}

PImage quantizza(PImage I, int k){
 PImage R = I.copy();
 R.loadPixels();
 int q;
 for(int i=0; i<R.pixels.length;i++){
   q = floor(red(R.pixels[i])*k/256);
   //q = int(float(q)/(k-1) * 255);
   q=int(lerp(0,255,float(q)/(k-1)));
   R.pixels[i] = color(q);
 }
 R.updatePixels();
 return R;
}

void keyPressed(){
 if(key=='+' && k<256) {
   k++;
   image(quantizza(Im,k),512,0);
   println(k);
 }
 if(key=='-' && k>2) {
   k--;
   image(quantizza(Im,k),512,0);
   println(k);
 }
}
