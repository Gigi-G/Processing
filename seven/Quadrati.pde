class Quadrati{
   float PosX, PosY, x, y, sy;
   color c;
   
   Quadrati(float PosX, float PosY, float y, float sy, color c){
      this.PosX = PosX;
      this.PosY = PosY;
      this.x = PosX+74;
      this.y = y;
      this.sy = sy;
      this.c = c;
   }
   
   void setPosY(float PosY){
      this.PosY= PosY;
   }
   
   void setY(float y){
      this.y= y;
   }
   
   float getPosY(){
      return PosY; 
   }
   
   float getY(){
      return y; 
   }
   
   void display(){
      noStroke();
      rectMode(CORNERS);
      fill(c);
      rect(PosX,PosY,x,y);
   }
   
   void move(){
      y += sy;
      control();
      //x += sy;
      //PosY += sy;
   }
   
   void control(){
      if(y<=37 || y>=259) sy = -sy;
      /*else if(PosY == 0 && (y<=37 || y>=259)) sy = -sy;*/
   }
   
   void run(){
      /*control();
      move();*/
      display();
   }
}
