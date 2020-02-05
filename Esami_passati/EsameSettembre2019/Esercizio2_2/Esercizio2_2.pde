PImage Im, I1, I2;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  image(Im,0,0);
  I1 = tBox(Im,int(random(16,257)));
  image(I1,256,0);
  I2 = tBox(Im,int(random(16,257)),7);
  image(I2,512,0);
}

void draw(){
  
}

PImage tBox(PImage I, int h){
  PImage R = I.copy();
  PImage tmp = I.get(0,0,h,h);
  for(int i=tmp.width-1; i>=0; i--){
    for(int j=tmp.width-1-i; j>0; j--) tmp.set(i,j,color(80));
  }
  R.set(0,0,tmp);
  return R;
}

float Convoluzione(PImage tmp, int N){
  float[][] f = new float[N][N];
  for(int i=0; i<N; i++){
   for(int j=0; j<N; j++) f[i][j] = 1/49.0; 
  }
  float s = 0;
  for(int x=0; x<tmp.width; x++){
   for(int y=0; y<tmp.height; y++){
     s+= red(tmp.get(x,y))*f[y][x];
   }
  }
  return s;
}

PImage tBox(PImage I, int h, int N){
 PImage R = tBox(I,h);
 PImage r = R.copy();
 PImage tmp;
 float[][] c = new float[R.width][R.height];
 for(int x=0; x<R.width; x++){
   for(int y=0; y<R.height; y++){
     tmp = R.get(x-N/2,y-N/2,N,N);
     c[y][x] = Convoluzione(tmp,N);
   }
 }
 for(int x=0; x<R.width; x++){
   for(int y=0; y<R.height; y++){
     r.set(x,y,color(constrain(abs(c[y][x]),0,255)));
   }
 }
 return r;
}

void keyPressed(){
 if(key=='R' || key=='r') setup(); 
}
