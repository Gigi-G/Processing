float a = 0, b = 0.2, v[], v2[], v3[], v4[];
int x = 10, y = 10, c = 12, k = 0;

void setup(){
 size(540,540);
 strokeWeight(15);
 v = new float[12];
 v2 = new float[12];
 v3 = new float[12];
 v4 = new float[12];
 for(int i=0; i<12; i++) {v[i] = a; v3[i] = a; v2[i] = b; v4[i] = b;}
 frameRate(60);
}

void draw(){
  background(255);
  c = 12;
  x = 15;
  k = x;
  float o = 1.0;
  for(int j=0; j<12; j++){
    x = k;
    y = 15;
    k = k +22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 1:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 2:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 3:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 4:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 5:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 6:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 7:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 8:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 9:  {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 10: {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 11: {line(x,y,x-v[j]/(i+o+j),y-v[j]/(i+o)); break;}
      }
      x+=22;
      y+=22;
      o-=0.5;
    }
    v[j] += v2[j];
    if(v[j] >= 11 || v[j] <= -11) v2[j] = - v2[j];
    c--;
  }
  
  c = 12;
  k = 15;
  for(int j=0; j<12; j++){
    x = 15;
    y = k;
    k = k + 22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 1:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 2:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 3:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 4:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 5:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 6:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 7:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 8:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 9:  {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 10: {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 11: {line(x,y,x-v[j]/(i+o),y-v[j]/(i+o+j)); break;}
      }
      x+=22;
      y+=22;
      o-=0.5;
    }
    v[j] += v2[j];
    if(v[j] >= 11 || v[j] <= -11) v2[j] = - v2[j];
    c--;
  }
  
  c = 12;
  k = 520;
  for(int j=0; j<12; j++){
    x = k;
    y = 15;
    k = k - 22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 1:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 2:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 3:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 4:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 5:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 6:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 7:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 8:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 9:  {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 10: {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
         case 11: {line(x,y,x+v[j]/(i+o+j),y-v[j]/(i+o)); break;}
      }
      x-=22;
      y+=22;
      o-=0.5;
    }
    v[j] += v2[j];
    if(v[j] >= 11 || v[j] <= -11) v2[j] = - v2[j];
    c--;
  }
  
  c = 12;
  k = 15;
  for(int j=0; j<12; j++){
    x = 520;
    y = k;
    k = k + 22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 1:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 2:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 3:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 4:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 5:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 6:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 7:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 8:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 9:  {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 10: {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
         case 11: {line(x,y,x+v[j]/(i+o),y-v[j]/(i+o+j)); break;}
      }
      x-=22;
      y+=22;
      o-=0.5;
    }
    v[j] += v2[j];
    if(v[j] >= 11 || v[j] <= -11) v2[j] = - v2[j];
    c--;
  }
  
  c = 12;
  k = 520;
  for(int j=0; j<12; j++){
    x = k;
    y = 520;
    k = k - 22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 1:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 2:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 3:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 4:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 5:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 6:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 7:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 8:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 9:  {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 10: {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 11: {line(x,y,x+v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
      }
      x-=22;
      y-=22;
      o-=0.5;
    }
    v3[j] += v4[j];
    if(v3[j] >= 11 || v3[j] <= -11) v4[j] = - v4[j];
    c--;
  }
  
  c = 12;
  k = 520;
  for(int j=0; j<12; j++){
    x = 520;
    y = k;
    k = k - 22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 1:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 2:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 3:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 4:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 5:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 6:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 7:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 8:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 9:  {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 10: {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 11: {line(x,y,x+v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
      }
      x-=22;
      y-=22;
      o-=0.5;
    }
    v3[j] += v4[j];
    if(v3[j] >= 11 || v3[j] <= -11) v4[j] = - v4[j];
    c--;
  }
  
  c = 12;
  k = 15;
  o = 1.0;
  for(int j=0; j<12; j++){
    x = k;
    y = 520;
    k = k +22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 1:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 2:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 3:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 4:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 5:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 6:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 7:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 8:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 9:  {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 10: {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
         case 11: {line(x,y,x-v3[j]/(i+o+j),y+v3[j]/(i+o)); break;}
      }
      x+=22;
      y-=22;
      o-=0.5;
    }
    v3[j] += v4[j];
    if(v3[j] >= 11 || v3[j] <= -11) v4[j] = - v4[j];
    c--;
  }
  
  c = 12;
  k = 520;
  o = 1.0;
  for(int j=0; j<12; j++){
    x = 15;
    y = k;
    k = k - 22;
    o = 1.0;
    for(int i=0; i<c; i++){
      switch(j){
         case 0:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 1:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 2:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 3:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 4:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 5:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 6:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 7:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 8:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 9:  {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 10: {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
         case 11: {line(x,y,x-v3[j]/(i+o),y+v3[j]/(i+o+j)); break;}
      }
      x+=22;
      y-=22;
      o-=0.5;
    }
    v3[j] += v4[j];
    if(v3[j] >= 11 || v3[j] <= -11) v4[j] = - v4[j];
    c--;
  }
}
