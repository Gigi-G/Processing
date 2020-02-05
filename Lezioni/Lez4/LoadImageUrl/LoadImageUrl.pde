PImage I,H;
String url;
void setup(){
 size(840,476);
 url = "https://upload.wikimedia.org/wikipedia/en/3/37/Adventure_Time_-_Title_card.png";
 I=loadImage(url);
 H=loadImage("Lenna.png");
 image(I,0,0,width,height);
 imageMode(CENTER);
 image(H,width/2,height/2);
}
