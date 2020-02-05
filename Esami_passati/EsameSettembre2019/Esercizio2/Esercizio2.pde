PImage Im, Im2, Im3;

void setup(){
 size(768,256);
 Im = loadImage("lena.png");
 Im.resize(256,256);
 image(Im,0,0);
 Im2 = sBlock(Im,int(random(10,80)));
 image(Im2,256,0);
 Im3 = sBlock(Im,int(random(10,80)), random(0.5,1.5));
 image(Im3,512,0);
}

void draw(){
  
}

PImage sBlock(PImage I, int h){
  PImage R = I.copy();
  int x1 = int(random(0,I.width+1));
  int y1 = int(random(0,I.height+1));
  int x2 = int(random(0,I.width+1));
  int y2 = int(random(0,I.height+1));
  /*PImage tmp1 = I.get(x1-h+1,y1-h+1,h-1,h-1);
  PImage tmp2 = I.get(x2-h+1,y2-h+1,h-1,h-1);
  PImage t1 = createImage(tmp1.width+2,tmp1.height+2,RGB);*/
  PImage t1 = createImage(h,h,RGB);
  t1.loadPixels();
  for(int i=0; i<t1.pixels.length; i++) t1.pixels[i] = color(161,11,161);
  t1.updatePixels();
  R.set(x1-h,y1-h,t1);
  R.set(x2-h,y2-h,t1);
  /*R.set(x1-h+1,y1-h+1,tmp1);
  R.set(x2-h+1,y2-h+1,tmp2);*/
  return R;
}

PImage sBlock(PImage I, int h, float s){
 PImage R = createImage(I.width,I.height,RGB);
 R.loadPixels();
 for(int i=0; i<R.pixels.length; i++) R.pixels[i] = color(0);
 R.updatePixels();
 PImage f = sBlock(I,h);
 float x1=0, y1=0;
 for(int x=0; x<f.width; x++){
  for(int y=0; y<f.height; y++){
    x1 = (x-f.width/2)*s;
    y1 = (y-f.height/2)*s;
    R.set(round(x1+f.width/2),round(y1+f.height/2),f.get(x,y));
  }
 }
 return R;
}

void keyPressed(){
 if(key=='R' || key == 'r') setup(); 
}
