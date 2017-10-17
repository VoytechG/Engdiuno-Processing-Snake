//generating a new cherry if it is time to do so

int mv=0;                            //moves from last eaten cherry
int cherries=0;                      
void cherry()
{
  if (mv!=3 || cherries>=3) return;  //make a new cherry with step 3
                                     
  int vl=1;        
  for (int i=0; i<bw; i++)          //counting empty fields
    for (int j=0; j<bh; j++)
      if (B[i][j]==0) vl++;
  
  float r=random(vl);              //choosing random empty field
  int cher=(int)r;
  
  vl=0;                           //finding the chosen field and making a cherry
  for (int i=0; i<bw; i++)
    for (int j=0; j<bh; j++)
    {
      if (B[i][j]==0) vl++;
      if (vl==cher) 
      { 
         B[i][j]=5;              //this field is now a cherry
         cherries++;             
         return;
       } 
    }   
}