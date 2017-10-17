//initializing and finishing the game

void init()
{ 
  h=0; k=0;    //reset all values
  t=0;
  mv=0;
  speedup=1;
  cherries=0;
  
  for (int i=0; i<bw; i++)
    for (int j=0; j<bh; j++)
      B[i][j]=0;
  
  level(lev);     //load chosen level (defualt 1)
  
  lost=false;
  frame();
}

void gameover()
{
   lost=true;
   fill (0,255,255);
   PFont f = createFont("Arial", 68, true);
   textFont(f);
   textAlign(CENTER);
   text("TRY AGAIN", 400, 250);
}