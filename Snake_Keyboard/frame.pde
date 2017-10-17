//new frame, colouring the board

void frame()     
{
  noStroke();
  
  for (int i=0; i<bw; i++)
  {
    for (int j=0; j<bh; j++)
    {
      int col=B[i][j];
      if (col==0) fill (61,93,25);         //empty field dark green
      
      if (col==1) fill (255,206,7);        //snake head yellow
      if (col==2) fill (129,206,15);       //first cell green
      if (col==3) fill (50,180,20);        //second
      if (col==4) fill (11,154,15);        //third
      
      if (col==-1) continue;              //let's draw walls later 
                                          //(to prevent their edges being overdrawn)
      if (col==5) fill (204,0,0);         //cherry red (goody!)
      
      rect (i*cl+xi, j*cl+yi, cl, cl);    
      
    }
  }
  
  fill(126,63,0); 
  stroke(0);                            //now the walls brown/black edges 
  for (int i=0; i<bw; i++)
    for (int j=0; j<bh; j++)
      if (B[i][j]==-1) 
        rect (i*cl+xi, j*cl+yi, cl, cl);
  noStroke();
}