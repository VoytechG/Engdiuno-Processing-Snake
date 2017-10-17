#include <EngduinoAccelerometer.h> 
#include <Wire.h>
#include <EngduinoButton.h>
float A[3];

void setup()
{
 EngduinoAccelerometer.begin();
 EngduinoButton.begin();
 Serial.begin(9600);
}

void loop()
{
   EngduinoAccelerometer.xyz(A); 

   float mx=max(abs(A[0]), abs(A[1]));
   
   int n;
   if (mx>0.35)
   {
     if (abs(A[0])>=abs(A[1]))
     {
       if (A[0]>0) n=1;
       else n=3;
     }
     else
     {
       if (A[1]>0) n=4;
       else n=2;
     }
   }
   else n=0;
  
   if (mx>0.85) n+=8;
   else if (mx>0.65) n+=4;
   
   int b=1;
   if (EngduinoButton.isPressed()) b=2;
   Serial.print(b);
   
   Serial.print(n);
   //Serial.print(" ");
   //Serial.print("\n");
   
   delay(20);   
}
