//PImage methods:
//get(x,y) mi dà informazioni sul colore di quel determinato pixel e restituisce un oggetto color
//Da get(x,y) ci sono altre tre funzioni che sono red(), green(), blue().
//Esiste la versione get(x,y,w,h) che restituisce un altro oggetto di tipo PImage per estrarre una sottoporzione dell'immagine
//set(x,y) setta il colore in quel determinato pixel

//Esiste un modo per ottenere la matrice di pixel di una immagine
//I.loadPixels();
//I.pixels array che è una linearizzazione della matrice dell'immagine. Per ottenere un pixel basta fare y*I.width+x
PImage im;
color c1;
int a,b,c;
void setup(){
 size(512,512);
 im = loadImage("Lenna.png");
 a = b = c = 0;
 /*c = color(255,255,0);
 im.loadPixels();
 for(int i=0; i<im.width; i++){
   im.pixels[pos(i,i,im.width)] = c;
 }
 im.updatePixels();
 for(int i=0; i<im.pixels.length; i++){
   c1 = im.pixels[i];
   c1 = color(red(c1)*0,green(c1),blue(c1));
   im.pixels[i] = c1;
 }
 im.updatePixels();
 image(im,0,0);*/
}

void draw(){
 im.loadPixels();
 /*for(int i=0; i<im.width; i++){
   im.pixels[pos(i,i,im.width)] = c;
 }
 im.updatePixels();*/
 for(int i=0; i<im.pixels.length; i++){
   c1 = im.pixels[i];
   c1 = color(red(c1)+a,green(c1)+b,blue(c1)+c);
   im.pixels[i] = c1;
 }
 im.updatePixels();
 image(im,0,0);
}

int pos(int x, int y, int w){
 return y*w+x; 
}

void keyPressed(){
  if(key=='r') a++;
  if(key=='R') a--;
  if(key=='g') b++;
  if(key=='G') b--;
  if(key=='b') c++;
  if(key=='B') b--;
}
