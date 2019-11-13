//curve di Bezier servono per le animazioni e venivano utilizzate per disegnare le scocche di automobili. Esse vengono defininte da due segmenti, ovvero quattro punti.
/*noFill();
stroke(255,100,0);
line(85,20,10,10);
line(90,90,15,80);
bezier(85, 20, 10, 10, 90, 90, 15, 80);
bezier(90, 90, 15, 80, 85, 20, 10, 10 );
stroke(0, 0, 0);
bezier(10, 10,  85, 20,  15, 80,  90, 90);*/


//mouseX e mouseY conservano la posizione del mio puntatore del mouse

int x, y;

void setup(){
   size(500,500);
   x = 85;
   y = 20;
   noFill();
   stroke(255);
}

void draw(){
    background(0);
    /*noFill();
    line(x,y,10,10);
    line(90,90,15,80);
    stroke(0, 0, 0);
    bezier(10, 10,  x, y,  15, 80,  90, 90);
    x = mouseX;
    y = mouseY;*/
    for(int i=0; i<200; i+=20){
       bezier(mouseX - (i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0)); 
    }
}
