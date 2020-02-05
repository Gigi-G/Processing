class Timer{
   float startTime, stopTime, st;
   int a;
   
   Timer(float stopTime){
      startTime = 0;
      st = 0;
      a = 1;
      this.stopTime = stopTime;
   }
   
   void Start(){
       a = 0;
       startTime = millis() * 0.001;
   }
   
   void Stop(){
      a = 1;
      startTime = 0; 
   }
   
   int isStop(){
       return a;
   }
   
   void Tick(){
      float t = millis() * 0.001;
      if(t - startTime>stopTime/2) st++;
      if(stopTime <= st) Stop();
   }
}
