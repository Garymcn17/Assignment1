class Scan
{
  
  float x = 100;
  float x1 = 50;
  float y = 1;
  
  Scan()
  {
    
  }
  
  void ShowScan() 
  {
    noFill();
    stroke(255,0,0);
    arc(width/2,height/2+40, x,x, -PI, 0);
    line(width/2,(height/2+20)-y,width/2 ,(height/2+40)-y);
    
    arc(width/2,height/2+40, x1,x1, -PI, 0);
    x = x +4;
    
    if ( x < 600)
    {
    x1 = x1 + 2;
    y++;
    }
    else
    {
      x1 = x1 - 2;
      y--;
    }
    
    if(x > width)
    {
      x = 100;
    }
  }
}