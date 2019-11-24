int r = 0, r1= -120, r2 = -240, r3 = -360, r4 = -480, r5 = -600, r6 = -720;
void setup(){
 size(500,500); 
 frameRate(30);
}

void draw(){
  background(0,255);
  noFill();
  strokeWeight(3);
  stroke(255);
  ellipse(width/2,height/2,r,r);
  if(r1>=0) ellipse(width/2,height/2,r1,r1);
  if(r2>=0) ellipse(width/2,height/2,r2,r2);
  if(r3>=0) ellipse(width/2,height/2,r3,r3);
  if(r4>=0) ellipse(width/2,height/2,r4,r4);
  if(r5>=0) ellipse(width/2,height/2,r5,r5);
  if(r6>=0) ellipse(width/2,height/2,r6,r6);
  r+=5;
  r1+=5;
  r2+=5;
  r3+=5;
  r4+=5;
  r5+=5;
  r6+=5;
  if(r>=860){
   r=0;
  }
  if(r1>=860){
   r1=0; 
  }
  if(r2>=860){
   r2=0; 
  }
  if(r3>=860){
   r3=0; 
  }
  if(r4>=860){
   r4=0; 
  }
  if(r5>=860){
   r5=0; 
  }
  if(r6>=860){
   r6=0; 
  }
}
