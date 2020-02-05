Heart h;
BlueHeart hb;

void setup(){
 background(255);
 size(300,300);
 h = new Heart(random(30,width-30),random(25,height-30),random(-5,5),random(-5,5));
 hb = new BlueHeart(random(30,width-30),random(25,height-30),random(-5,5),random(-5,5));
}

void draw(){
 background(255);
 h.run();
 hb.run();
}
