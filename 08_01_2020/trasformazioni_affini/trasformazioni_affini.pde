PImage Im, Irf, Iri;
int ang = 0;

void setup(){
    Im = loadImage("Lenna.png");
    size(1024,512);
    Irf = rotateF(Im, radians(ang));
    Iri = rotateI(Im, radians(ang));
    image(Irf,0,0);
    image(Iri,512,0);
}

void draw(){
  
}

PImage rotateF(PImage I, float theta){
    PImage R = createImage(I.width, I.height, RGB);
    R.loadPixels();
    for(int i = 0; i<R.pixels.length; i++) R.pixels[i] = color(0);
    float x,y,u1,v1;
    for(int u = 0; u<I.width;u++){
       for(int v = 0; v<I.height; v++){
          u1 = u - I.width/2;
          v1 = v - I.height/2;
          x = u1*cos(theta) - v1*sin(theta);
          y = u1*sin(theta) + v1*cos(theta);
          x = x + I.width/2;
          y = y + I.height/2;
          R.set(round(x),round(y),I.get(u,v));
       }
    }
    return R;
}

PImage rotateI(PImage I, float theta){
    PImage R = createImage(I.width, I.height, RGB);
    R.loadPixels();
    for(int i = 0; i<R.pixels.length; i++) R.pixels[i] = color(0);
    float u,v,x1,y1;
    for(int x = 0; x<I.width;x++){
       for(int y = 0; y<I.height; y++){
          x1 = x - I.width/2;
          y1 = y - I.height/2;
          u = x1*cos(theta) + y1*sin(theta);
          v = -x1*sin(theta) + y1*cos(theta);
          u = u + I.width/2;
          v = v + I.height/2;
          R.set(x,y,I.get(round(u),round(v)));
       }
    }
    return R;
}

void keyPressed(){
    if(key=='+'){
       ang+=5;
    }
    if(key=='-'){
       ang-=5;
    }
    ang=ang%360;
    setup();
}
