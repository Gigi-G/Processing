//PImage methods:
//get(x,y) mi dà informazioni sul colore di quel determinato pixel e restituisce un oggetto color
//Da get(x,y) ci sono altre tre funzioni che sono red(), green(), blue().
//Esiste la versione get(x,y,w,h) che restituisce un altro oggetto di tipo PImage per estrarre una sottoporzione dell'immagine
//set(x,y) setta il colore in quel determinato pixel

//Esiste un modo per ottenere la matrice di pixel di una immagine
//I.loadPixels();
//I.pixels array che è una linearizzazione della matrice dell'immagine. Per ottenere un pixel basta fare y*I.width+x
PImage im, subH;
void settings(){
  im = loadImage("Lenna.png");
  size(im.width,im.height);
}

void setup(){
 println("Larghezza: " + im.width + "\n" + "ALtezza: " + im.height);
}

void draw(){
 background(0);
 image(im,0,0);
 im.set(im.width/2,im.height/2,0);
 subH=get(0,0,100,100);
 image(subH,width/2,height/2);
 color c = color(255,0,0);
 for(int i=0; i<im.width; i++){
  im.set(i,i,subH);
 }
}

void mousePressed(){
 im.resize(im.width/2,im.height/2); 
}

void keyTyped(){
 if(key=='s' || key == 'S'){
  println(savePath("lenaPiccola.png"));
  im.save(savePath("lenaPiccola.png")); 
 }
 if(key == 'f' || key == 'F'){
  saveFrame(savePath("lenaCanvas.png")); 
 }
}
