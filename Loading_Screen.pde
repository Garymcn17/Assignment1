int status = 0;
class Loading_Screen
{
  
  
  void Loading()
  {
    
    fill(0);
    rect(0,0, width,height );
    pushMatrix();
    
    fill(255);
    textAlign(LEFT);
    text ("LOADING " + int((frameCount%301) / 3) + "%", 10, 670);
    rect(10, 680, 204, 24);
    fill(0);
    int fillX = ((frameCount%301) / 3 * 2);
    rect(250, 140, fillX-200, 20);
    popMatrix();
    
    if( checkKey('w'))
    {
      status = 1;
      println("SpaceShip ");
    }
    
     if( checkKey('s'))
    {
      status = 0;
      println(" Menu ");
    }
    
    
 
  }
  
}