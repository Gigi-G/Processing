size(480,480);
background(0);
noStroke();
colorMode(RGB, width); //cambia il modo di passare i colori in base ad una grandezza
float d = 0.5;
for(float y=d/2; y<=height; y+=d){
   for(float x=d/2; x<=width; x+=d){
      fill(x,y,0);
      ellipse(x,y,d,d); 
   }
}
