int status = 0;
class Loading_Screen
{
  float fillX;
  
  void Loading()
  {
    
    fill(0);
    rect(0,0, width,height );
    pushMatrix();
    
    fill(255);
    textAlign(LEFT);
    textSize(20);
    rect(10, 680, 205, 24);
    fill(255,0,0);
    
    rect(215, 680, fillX-200, 24);
    if(fillX < 202)
    {
      fillX = fillX + .5;
      text ("LOADING " + int((frameCount%401) / 4) + "%", 10, 670);
    }
    else
    {
       fillX = 202;
       text("LOADING 100" + "%", 10,670);
    }
    popMatrix();
  }
    void Switch()
    {
      if(keyPressed)
      {
        if( key == 'w' || key == 'W')
        {
          status = 1;
          println("SpaceShip ");
        }
        
         if( key == 's' || key == 'S')
        {
          status = 0;
          println(" Menu ");
        }
      }
    }
    
    void Load()
    {
      stroke(0);
      fill(#2FF5A0);
      pushMatrix();
      translate(width / width + 75, height -75);
      rotate(angle);
      angle+= .01;
      triangle(0, size, size/2, 0, size, size);
      popMatrix();
      fill(0);
      stroke(0);
      fill(#2FF5A0);
      pushMatrix();
      translate(width / width + 325, height -75);
      rotate(angle);
      angle += .1;
      triangle(0, size, size/2, 0, size, size);
      popMatrix();
      fill(0);
     
    }
    
 
  
}