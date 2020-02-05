Pillow p;
SuperPillow sp;

void setup(){
 background(0);
 size(256,512);
 p = new Pillow(random(40,width-40),random(80,height/2-80),40,80);
 sp = new SuperPillow(random(40,width-40),random(height/2+80,height-80),40,80);
}

void draw(){
 background(0);
 p.run();
 sp.run();
}
