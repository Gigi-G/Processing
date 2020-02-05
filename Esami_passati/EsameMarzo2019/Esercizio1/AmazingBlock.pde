class AmazingBlock extends Block{
  int angle;
  AmazingBlock(float x, float y, float w, float h){
   super(x,y,w,h);
   angle = int(random(0,361));
   c = color(angle%256,255-angle%256,255);
  }
  
  void display(){
    noStroke();
    fill(c);
    pushMatrix();
    rectMode(CENTER);
    translate(x,y);
    rotate(radians(angle));
    rect(0,0,w,h);
    rectMode(CORNER);
    popMatrix();
  }
  
  void move(){
   angle+=5;
   angle = angle%360;
   super.move();
  }
}
