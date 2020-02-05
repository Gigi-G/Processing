Block b;
AmazingBlock ab;

void setup(){
  background(255);
  size(256,512);
  b = new Block(random(0,width-40),random(0,height/2-60),40,60);
  ab = new AmazingBlock(random(0,width-40),random(height/2,height-60),40,60);
}

void draw(){
 background(255);
 b.run();
 ab.run();
}
