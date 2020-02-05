PImage I, Is;
char c;
int ascii;
int N, K, count;

void setup(){
  size(1024,512);
  c = 's';
  ascii = int(c) - 60;
  I = loadImage("lena.png");
  image(I,0,0);
  N = 1;
  K = 25;
  count = 0;
  Is = grid(I,int(pow(2,N)));
  image(Is,512,0);
  frameRate(ascii);
}

void draw(){
  count++;
  if(count>=K){
    N++;
    N = N%8;
    count = 0;
    Is = grid(I,int(pow(2,N)));
    image(Is,512,0);
  }
}

PImage stretching(PImage I){
 PImage R = I.copy();
 R.loadPixels();
 float rmax,gmax,bmax,rmin,gmin,bmin;
 rmax = rmin = red(R.pixels[0]);
 gmin = gmax = green(R.pixels[0]);
 bmin = bmax = blue(R.pixels[0]);
 for(int i=1; i<R.pixels.length; i++){
     if(red(R.pixels[i])>rmax) rmax = red(R.pixels[i]);
     if(red(R.pixels[i])<rmin) rmin = red(R.pixels[i]);
     if(green(R.pixels[i])>gmax) gmax = green(R.pixels[i]);
     if(green(R.pixels[i])<gmin) gmin = green(R.pixels[i]);
     if(blue(R.pixels[i])>bmax) bmax = blue(R.pixels[i]);
     if(blue(R.pixels[i])<bmin) bmin = blue(R.pixels[i]);
 }
 float r,g,b;
 for(int i=0; i<R.pixels.length; i++){
    r = 255*(red(R.pixels[i])-rmin)/(rmax-rmin);
    g = 255*(green(R.pixels[i])-gmin)/(gmax-gmin);
    b = 255*(blue(R.pixels[i])-bmin)/(bmax-bmin);
    R.pixels[i] = color(r,g,b);
 }
 R.updatePixels();
 return R;
}

PImage grid(PImage I, int N){
 PImage R = createImage(I.width, I.height, RGB);
 PImage p, pt;
 int nW = I.width/N;
 int nH = I.height/N;
 for(int x=0; x<N; x++){
  for(int y=0; y<N; y++){
    p = I.get(x*nW,y*nH,nW,nH);
    p.loadPixels();
    for(int i=1; i<p.pixels.length; i++){
     if(p.pixels[i] == color(0,0,0)){
        p.pixels[i] = p.pixels[i-1]; 
     }
    }
    p.updatePixels();
    pt = stretching(p);
    R.set(x*nW,y*nH,pt);
  }
 }
 return R;
}
