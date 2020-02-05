PImage  I;
float r,g,b;
color c;
void setup(){
 size(512,512);
 I=createImage(512,512,RGB);
 I.loadPixels();
 for(int i=0; i<I.width; i++){
  for(int j=0; j<I.height; j++){
   c=color(lerp(0,255,float(i)/I.width),lerp(0,255,float(j)/I.height),lerp(0,255,float(i*j)/I.width*I.height),0);
   I.pixels[pos(i,j,I.width)] = c;
  }
 }
 I.updatePixels();
 image(I,0,0);
}

int pos(int x, int y, int w){
 return x + y*w; 
}
