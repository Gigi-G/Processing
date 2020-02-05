//Lavagnetta
void setup(){
   size(500,500);
   background(255);
}

void draw(){
   fill(0);
   if(mousePressed){
     line(pmouseX,pmouseY,mouseX,mouseY);
   }
}
