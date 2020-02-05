PImage Im, In3, In5, Il, IsX, Ir, Is, IsY, Inb;
float[][] nbox3, nbox5;
float[][] lapl = {{-1,0,-1}, {0,4,0}, {-1,0,-1}};
float[][] sharp = {{-1,0,-1}, {0,5,0}, {-1,0,-1}};
float[][] sobx = {{-1,-2,-1}, {0,0,0}, {1,2,1}};
float[][] random = {{2,-2,-3}, {5,-1,0.5}, {-1,4,2}};
float[][] SobelY = {{-1,0,1}, {-2,0,2}, {-1,0,1}};
float[][] nbinomiale3 = {{1/16.0,2/16.0,1/16.0},{2/16.0,4/16.0,2/16.0},{1/16.0,2/16.0,1/16.0}};
void setup(){
    nbox3 = new float[3][3];
    for(int i=0; i<3; i++){
      for(int j=0; j<3; j++) nbox3[i][j] = 1/9.0;
    }
    nbox5 = new float[5][5];
    for(int i=0; i<5; i++){
      for(int j=0; j<5; j++) nbox5[i][j] = 1/25.0;
    }
    Im = loadImage("lena.png");
    Im.resize(256,256);
    size(1024,512);
    Im.filter(GRAY);
    IsY = converti(convoluzione(Im,SobelY));
    In3 = converti(convoluzione(Im,nbox3));
    In5 = converti(convoluzione(Im,nbox5));
    Inb = converti(convoluzione(Im,nbinomiale3));
    Il = converti(convoluzione(Im,lapl));
    Is = converti(convoluzione(Im,sharp));
    IsX = converti(convoluzione(Im,sobx));
    Ir = converti(convoluzione(Im,random));
    
    image(Ir,0,0);
    image(In5,256,0);
    image(Il,512,0);
    image(IsX,768,0);
    image(In3,0,256);
    image(Is,256,256);
    image(IsY,512,256);
    image(Inb,768,256);
}

PImage converti(float[][] conv){
   PImage I = createImage(conv[0].length,conv.length, RGB);
   float res = 0;
   for(int x=0; x<I.width; x++){
       for(int y=0; y<I.height; y++){
          res=constrain(abs(conv[y][x]),0,255); //constrain normalizza i valori della matrice di convoluzione
          I.set(x,y,color(res)); 
       }
   }
   return I;
}

float[][] convoluzione(PImage I, float[][] K){
   float[][] R = new float[I.height][I.width];
   int N = K[0].length;
   int M = K.length;
   float res = 0;
   PImage temp;
   for(int x=0; x<I.width; x++){
      for(int y=0; y<I.height; y++){
          temp = I.get(x-N/2,y-M/2,N,M);
          res = 0;
          for(int i=0; i<temp.width; i++){
             for(int j=0; j<temp.height; j++){
                 res+=red(temp.get(i,j)) * K[j][i];
             }
          }
          R[y][x] = res;
      }
   }
   return R;
}
