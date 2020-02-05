PImage I, I2, I3;
float[][] SobelX = {{-1,-2,-1}, {0,0,0}, {1,2,1}};
float[][] nbinomiale5 = {{1/256.0,2/256.0,4/256.0,2/256.0,1/256.0},{4/256.0,16/256.0,24/256.0,16/256.0,4/256.0},{6/256.0,24/256.0,36/256.0,24/256.0,6/256.0},{1/256.0,2/256.0,4/256.0,2/256.0,1/256.0},{4/256.0,16/256.0,24/256.0,16/256.0,4/256.0}};

void setup(){
 size(768,256);
 I = loadImage("lena.png");
 I.filter(GRAY);
 I.resize(256,256);
 image(I,0,0);
 I2 = Converti(applicationFilter(I,SobelX,3));
 image(I2,256,0);
 I3 = Converti(applicationFilter(I,nbinomiale5,5));
 image(I3,512,0);
}

void draw(){
  
}

PImage Converti(float[][] conv){
  PImage R = createImage(conv[0].length,conv.length,RGB);
  for(int x = 0; x<R.width; x++){
   for(int y=0; y<R.height; y++){
     R.set(x,y,color(constrain(abs(conv[y][x]),0,255)));
   }
  }
  return R;
}

float Convoluzione(PImage I, float[][] filter){
  float r = 0;
  for(int x=0; x<I.width; x++){
     for(int y=0; y<I.height; y++){
       r+= red(I.get(x,y))*filter[y][x];
     }
  }
  return r;
}

float[][] applicationFilter(PImage I, float[][] filter, int n){
  float[][] R = new float[I.width][I.height];
  for(int x=0; x<I.width; x++){
   for(int y=0; y<I.height; y++){
     PImage tmp = I.get(x-n/2,y-n/2,n,n);
     R[y][x] = Convoluzione(tmp,filter);
   }
  }
  return R;
}
