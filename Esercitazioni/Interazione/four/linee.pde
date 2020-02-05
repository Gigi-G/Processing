class Linee{
  float posX,posY,x,y,sx,sy;
  
  Linee(float posX, float posY, float x, float y, float sx, float sy){
     this.posX = posX;
     this.posY = posY;
     this.x = x;
     this.y = y;
     this.sx = sx;
     this.sy = sy;
  }
  
  float getX(){
      return this.x;
  }
  
  float getY(){
     return this.y; 
  }
  
   void display(){
      strokeWeight(1.5);
      line(posX,posY,x,y);
   }
   
   void move(){
       y += sy;
       x += sx;
   }
   
   void canc(){
      if(y>=height && sy>0){
          /*posX = -2;
          posY = -2;
          y = -2;
          x = -2;*/
          sy = 0;
      }
      if(x>=width && sx>0){
          /*posX = -2;
          posY = -2;
          y = -2;
          x = -2;*/
          sx = 0;
      }
      if(x<=0 && sx<0){
          /*posX = -2;
          posY = -2;
          y = -2;
          x = -2; */
          sx = 0;
      }
      if(y<=0 && sy<0){
          /*posX = -2;
          posY = -2;
          y = -2;
          x = -2;*/
          sy = 0;
      }
   }
   
   void run(){
      canc();
      move();
      if(sx != 0 || sy != 0) display();
   }
}
