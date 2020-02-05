class Quadrati{
    float posX,posY,l,sx,sy;
    
    Quadrati(float PosX, float PosY, float l, float sx, float sy){
       this.posX = PosX;
       this.posY = PosY;
       this.l = l;
       this.sx = sx;
       this.sy = sy;
    }
    
    void display(){
       fill(255);
       rect(posX,posY,l,l);
    }
    
    void move(){
       posX += sx;
       posY += sy;
    }
    
    void run(){
        move();
        display();
    }
}
