class Fish{
 float x, y, sx, sy;
 color c;
 float ao, av, h, b, d;
 
 Fish(float x, float y, float sx, float sy, color c){
  ao = 80;
  av = 50;
  h = 40;
  b = 50;
  d = 5;
  this.x = x;
  this.y = y;
  this.sx = sx;
  this.sy = sy;
  this.c = c;
 }
 
 void display(){
    fill(c);
    ellipse(x,y,ao,av);
    triangle(x-ao/2-40,y-25,x-ao/2,y,x-ao/2-40,y+25);
    fill(0);
    ellipse(x+ao/2-20,y-10,d,d);
 }
 
 void move(){
  x += sx;
  y += sy;
 }
 
 Bubble genBubble(){
  float bd = random(10,30);
  Bubble b = new Bubble(x+ao,y,bd/10,bd);
  b.display();
  return b;
 }
 
 void run(){
  move();
  display();
 }
}
