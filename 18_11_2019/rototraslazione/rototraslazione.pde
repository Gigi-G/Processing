int a;
int x;

void setup(){
 size(500,500);
 a = 0;
 x = 0;
 //frameRate(10);
 //rectMode(CENTER);
}

void draw(){
 background(100);
 fill(255,0,0);
 translate(x++,100);
 rotate(radians(a));
 rect(-25,-25,50,50);
 //rect(0,0,50,50);
 a++;
}
