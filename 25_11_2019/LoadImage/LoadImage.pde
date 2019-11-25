//Image processing
//Load image from web
PImage im;
void setup(){
 size(1000,700);
 im = loadImage("Lenna.png");
 println("Larghezza: " + im.width + "\n" + "ALtezza: " + im.height);
}

void draw(){
 background(0);
 image(im,0,0); //Versione a 5 parametri, gli ultimi due gestiscono la dimensione dell'immagine
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
