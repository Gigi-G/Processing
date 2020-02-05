PImage Im, Isf, Isi;
float scale = 1;

void setup(){
    Im = loadImage("Lenna.png");
    size(1024,512);
    Isf = scaleF(Im, scale, scale);
    Isi = scaleI(Im, scale, scale);
    image(Isf,0,0);
    image(Isi,512,0);
}

void draw(){
  
}

PImage scaleF(PImage I, float sx, float sy){
    PImage R = createImage(I.width, I.height, RGB);
    R.loadPixels();
    for(int i = 0; i<R.pixels.length; i++) R.pixels[i] = color(0);
    float x,y,u1,v1;
    for(int u = 0; u<I.width;u++){
       for(int v = 0; v<I.height; v++){
          u1 = u - I.width/2;
          v1 = v - I.height/2;
          x = u1 * sx;
          y = v1 * sy;
          x = x + I.width/2;
          y = y + I.height/2;
          R.set(round(x),round(y),I.get(u,v));
       }
    }
    return R;
}

PImage scaleI(PImage I, float sx, float sy){
    PImage R = createImage(I.width, I.height, RGB);
    R.loadPixels();
    for(int i = 0; i<R.pixels.length; i++) R.pixels[i] = color(0);
    float u,v,x1,y1;
    for(int x = 0; x<I.width;x++){
       for(int y = 0; y<I.height; y++){
          x1 = x - I.width/2;
          y1 = y - I.height/2;
          u = x1 / sx;
          v = y1 / sy;
          u = u + I.width/2;
          v = v + I.height/2;
          R.set(x,y,I.get(round(u),round(v)));
       }
    }
    return R;
}

void keyPressed(){
    if(key=='+'){
       scale+=.1;
    }
    if(key=='-'){
       scale-=.1;
    }
    setup();
}
