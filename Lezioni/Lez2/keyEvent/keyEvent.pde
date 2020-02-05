//key contiene costantemente il tasto premuto ed è case sensitive
int x=200;

void setup(){
 size(500,200);
}

void draw(){
  background(0);
  if(keyPressed){
   if(keyCode==LEFT || key == 'a' || key == 'A'){
      x--; 
   }
   else if(keyCode==RIGHT || key == 'd' || key == 'D'){
      x++; 
   }
  }
  rect(x,height/2-20,40,40);
}
