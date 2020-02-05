int r=40, dir=1, a = 0;
float x = 100, vel = 2, dira = 1;

void setup(){
   size(500,500);
   ellipseMode(RADIUS);
   frameRate(60);
}

void draw(){
   background(0);
   x+=dir*vel;
   a+=dira*vel*2;
   if(a<=0 || a>=45) dira = -dira;
   if(x>width-r || x<r) dir*=-1;
   if(dir==1){
       fill(255,255,0);
       arc(x, height/2,r,r,radians(45-a),radians(360-45+a));
       fill(0);
       ellipse(x-7, height/2 - 15,5,5);
   }
   else{
       fill(255,255,0);
       arc(x, height/2,r,r,radians(225-a), radians(360-45+180+a));
       fill(0);
       ellipse(x+7, height/2 - 15,5,5);
   }
}
