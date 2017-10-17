//checking validity of requested direction change
//moving the snake
//checking if cherry, tail, collision

int plus=0;          //how many cells left to be added

void move(int d)
{
  if (d==0) return; 
  
  int xhe=S[ds-1][0], yhe=S[ds-1][1];
  if (d==1) yhe=(yhe+bh-1)%bh;
  if (d==3) yhe=(yhe+1)%bh;
  if (d==2) xhe=(xhe+bw-1)%bw;
  if (d==4) xhe=(xhe+1)%bw;
  
  if (B[xhe][yhe]==5)           
  {
    plus+=add;                 //new cells to be added
    cherries--;              
    if (cherries==0) mv=0;     
  }
  
  else if (B[xhe][yhe]!=0)     //ongoing field is not empty
  {
    if (d!=h)    //if moving parallel direction not chaged 
    {
      move(h); 
      return;
    }
    
    else        //collision
    {
      gameover(); 
      return;
    }
  }
  h=d;   //new direction
  
  if (plus==0)      //remove last and rewrite
  {
    B[S[0][0]][S[0][1]]=0;
    for (int i=0; i<ds-1; i++)
      for (int j=0; j<3; j++)
        S[i][j]=S[i+1][j];
  }
  else { ds++; plus--; }   //just add new one
  
  S[ds-1][0]=xhe; S[ds-1][1]=yhe;    //new position of head
 
  int j=0;                          //mpve snake by one field
  for (int i=ds-2; i>=0; i--)
    B[S[i][0]][S[i][1]]=(j++)%3+2;
  B[S[ds-1][0]][S[ds-1][1]]=1;
 
  if (mv==60) mv=0;                  //cherry appearance counter
  mv++;
}