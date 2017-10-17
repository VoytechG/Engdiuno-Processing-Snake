//place the snake on the board, locate walls

int lchoice=0;
int add;

void placesnake()
{
  int j=-1;                            //place the snake
  for (int i=ss-1; i>=0; i--)
    {
        int curcol=(j++)%3+2;
        if (i==ss-1) curcol = 1; 
        B[(bw-ss)/2+i][bh/2]=curcol;
        S[i][0]=(bw-ss)/2+i;
        S[i][1]=(bh/2);
        S[i][2]=curcol;
     } 
}

void level(int l)
{
    if (l==1)
    {              //this level's:
        ss=15;     //initial snake length
        add=4;     //cells added to snake with one cherry  
    }
    
    if (l==2)
    {
        ss=7; 
        add=2;
     
        for (int i=0; i<bw; i++)    //walls 2
        { 
          B[i][0]=-1;
          B[i][bh-1]=-1;
        }
        for (int i=0; i<bh; i++)
        {
          B[0][i]=-1;
          B[bw-1][i]=-1;
        }
    }
    
    if (l==3)
    {
        ss=4; 
        add=1;
        
        for (int i=0; i<bw; i++)    //walls 3
        { 
          if (i<11 || i>20)
          {
            B[i][0]=-1;
            B[i][bh-1]=-1;
          }
        }
        for (int i=0; i<bh; i++)
        {
          if (i<6 || i>11)
          {
            B[0][i]=-1;
            B[bw-1][i]=-1;
          }
        }
        
        for (int i=5; i<13; i++)
        {  
          B[6][i]=-1;
          B[25][i]=-1; 
        }
          
    }
    
    ds=ss;              //set new initial snake length
    placesnake();
  
}