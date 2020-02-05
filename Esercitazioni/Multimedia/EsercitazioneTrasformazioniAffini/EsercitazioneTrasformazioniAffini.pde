PImage I, If, Ii;
float a;

void setup(){
 size(512,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 a = 0;
 If = rotazionef(I,radians(a));
 image(If,0,0);
 Ii = rotazioneI(I,radians(a));
 image(Ii,256,0);
}

void draw(){
  
}

PImage rotazionef(PImage I, float theta){
 PImage R = createImage(I.width,I.height,RGB);
 float x1 = 0, y1 = 0;
 for(int x=0; x<I.width; x++){
  for(int y=0; y<I.height; y++){
   x1 = (x-I.width/2)*cos(theta)-(y-I.height/2)*sin(theta);
   y1 = (x-I.width/2)*sin(theta)+(y-I.height/2)*cos(theta);
   R.set(round(x1+I.width/2),round(y1+I.height/2),I.get(x,y));
  }
 }
 return R;
}

PImage rotazioneI(PImage I, float theta){
 PImage R = createImage(I.width,I.height,RGB);
 float x1 = 0, y1 = 0;
 for(int x=0; x<I.width; x++){
  for(int y=0; y<I.height; y++){
   x1 = (x-I.width/2)*cos(theta)+(y-I.height/2)*sin(theta);
   y1 = -(x-I.width/2)*sin(theta)+(y-I.height/2)*cos(theta);
   R.set(x,y,I.get(round(x1+I.width/2),round(y1+I.height/2)));
  }
 }
 return R;
}

void keyPressed(){
 if(key=='+'){
  a+=0.5;
  a = a%360;
  If = rotazionef(I,radians(a));
  image(If,0,0);
  Ii = rotazioneI(I,radians(a));
  image(Ii,256,0);
 }
 if(key=='-'){
  a-=0.5;
  a = a%360;
  If = rotazionef(I,radians(a));
  image(If,0,0);
  Ii = rotazioneI(I,radians(a));
  image(Ii,256,0);
 }
}
