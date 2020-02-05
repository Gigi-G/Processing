class Ball{
  float x, y, R, sy;
  color c;
  
  Ball(float x, float y, float R){
   this.x = x;
   this.y = y;
   this.R = R;
   sy = 5;
   c = color(255,0,0);
  }
  
  void display(){
   noStroke();
   fill(c);
   ellipse(x,y,R*2,R*2);
  }
  
  void move(){
   y+=sy;
   if(y<=0+R || y >= 256-R) sy = -sy;
  }
  
  void run(){
    move();
    display();
  }
  
}
