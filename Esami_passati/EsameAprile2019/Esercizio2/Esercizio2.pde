PImage I, I1, I2;

void setup(){
 size(768,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 I.filter(GRAY);
 image(I,0,0);
 I1 = gammaOp(I,random(1.5,5));
 image(I1,256,0);
 I2 = gammaOp(I,random(1.5,5),int(random(50,251)),int(random(3,15)));
 image(I2,512,0);
}

void draw(){
  
}

PImage gammaOp(PImage I, float g){
 PImage R = I.copy();
 R.loadPixels();
 float c = 255/pow(255,g);
 for(int i=0; i<R.pixels.length; i++){
   R.pixels[i] = color(c*(pow(red(R.pixels[i]),g)));
 }
 R.updatePixels();
 return R;
}

PImage gammaOp(PImage I, float g, int L, int T){
 PImage R = gammaOp(I,g);
 PImage tmp = R.get(R.width/2-L/2+T,R.height/2-L/2+T,L-T*2,L-T*2);
 PImage t = createImage(L,L,RGB);
 t.loadPixels();
 for(int i=0; i<t.pixels.length; i++){
  t.pixels[i] = color(153,17,153);
 }
 t.updatePixels();
 R.set(R.width/2-L/2,R.height/2-L/2,t);
 R.set(R.width/2-L/2+T,R.height/2-L/2+T,tmp);
 return R;
}

void keyPressed(){
 if(key=='R' || key == 'r') setup(); 
}
