//PImage methods:
//get(x,y) mi dà informazioni sul colore di quel determinato pixel e restituisce un oggetto color
//Da get(x,y) ci sono altre tre funzioni che sono red(), green(), blue().
//Esiste la versione get(x,y,w,h) che restituisce un altro oggetto di tipo PImage per estrarre una sottoporzione dell'immagine
//set(x,y) setta il colore in quel determinato pixel

//Esiste un modo per ottenere la matrice di pixel di una immagine
//I.loadPixels();
//I.pixels array che è una linearizzazione della matrice dell'immagine. Per ottenere un pixel basta fare y*I.width+x
PImage im;
color c;

void setup(){
 size(500,500);
 im = loadImage("Lenna.png");
 im.resize(im.width/2,im.height/2); 
}

void draw(){
 background(0);
 image(im,100,100);
 c = im.get(mouseX-100,mouseY-100);
 println(red(c) + " " + green(c) + " " + blue(c));

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
