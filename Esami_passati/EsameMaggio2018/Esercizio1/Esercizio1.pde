PImage I;
int K;
color c;

void setup(){
 size(1024,512);
 K = 10*5+1;
 I = loadImage("lena.png");
 image(I,0,0);
}

void draw(){
  image(I,0,0);
  noFill();
  rectMode(CENTER);
  stroke(color(0,255,0));
  if((int)mouseX>=512){
    rect((int)map(mouseX,0,1024,0,512),(int)mouseY,K,K);
    c = regionMean(I,(int)map(mouseX,0,1024,0,512),(int)mouseY,K);
  }
  else{
    rect((int)mouseX,(int)mouseY,K,K);
    c = regionMean(I,(int)mouseX,(int)mouseY,K);
  }
  fill(c);
  rectMode(CORNER);
  stroke(color(0,0,0));
  rect(512,0,512,512);
}

color imMean(PImage I){
 color r = color(0);
 float rm = 0, gm = 0, bm = 0;
 I.loadPixels();
 for(int i=0; i<I.pixels.length; i++){
  rm += red(I.pixels[i]);
  gm += green(I.pixels[i]);
  bm += blue(I.pixels[i]);
 }
 r = color(rm/I.pixels.length, gm/I.pixels.length, bm/I.pixels.length);
 I.updatePixels();
 return r;
}

color regionMean(PImage I, int x, int y, int n){
 PImage tmp = I.get(x-n/2,y-n/2,n,n);
 return imMean(tmp);
}

void keyPressed(){
 if(key=='+' && K<250) K++;
 if(key=='-' && K>10) K--;
}
