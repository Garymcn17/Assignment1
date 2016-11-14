int status = 0;
class Loading_Screen
{
  
  
  void Loading()
  {
    fill(0);
    rect(0,0, width,height );
    
    textSize(30);
    text("LOADING", width/2,height/2);
    
    if( checkKey('w'))
    {
      status = 1;
      println("UP Pressed!! ");
    }
 
  }
  
}