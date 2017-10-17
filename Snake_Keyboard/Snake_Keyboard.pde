
//FOR ENGDUINO
/*import processing.serial.*;

Serial mP; 
String val;
*/


int bw=32, bh=18,cl;             //board width, height, cell size
int xi=0, yi=0;                  
int [][]B = new int[200][200];   //game board
int [][]S = new int[40000][3];   //snake cells' coordinates and colours
int ss=16; int ds=ss, h=0;       //snake original/current length, direction
int t=0;                         //time counter
boolean lost=false;



void setup()
{
    size (800,450);
    cl=25;
  
    frameRate(100);
    
    //FOR ENGDUINO
    //mP = new Serial(this, Serial.list()[0], 9600);
  
    init();
}

int k,r,speedup=1,data;
int lev=1;
void draw()
{
    int tlev = key-'1'+1;
    if (tlev>0 && tlev<=3) lev=tlev;     //keyboard - level
    println(lev);
    t++;
    
    
    //FOR ENGDUINO
   /* if(mP.available()>0)                             
    {
       String str = mP.readString();
       data = Integer.parseInt(str);
       
       if (data>100) { r=data/100; data=data%100; }  //button pressed/not
       else { r=data/10; data=data%10; }
            
       if (data>8) {speedup=6; data-=8;}             //tilt direction/extent
       else if (data>4) {speedup=3; data-=4;}
       else speedup=1;
    }
    
    if (r==2) init();*/
    
    if (key=='w' || key=='a' || key=='s'|| key=='d') k=key;
    if (key=='u') speedup=1;
    if (key=='i') speedup=2;
    if (key=='o') speedup=4;
    if (key=='p') speedup=8;
    
    if (key=='r') init();
      
    if (key!=' ' && !lost && t>=50/speedup)    //main loop, executes with counter hitting max
    {
       if (data>0) k=data; 
       int d=0;
       if (k=='w') d=1;
       if (k=='s') d=3;
       if (k=='a') d=2;
       if (k=='d') d=4;
              
       move(d);                    //sending direction change request
       //ENG
       //move(k);
       
       cherry();                   //generating a cherry
       
       if (!lost) frame();        
       
       t=0;                       //timer reset
    }
}