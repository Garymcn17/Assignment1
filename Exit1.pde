class Exit1{
  
  String name;
  float pop; // size
  float X;
  float Y;
  String desc;
  
   Exit1(String name, float pop, float X, float Y, String desc)
  {
    this.name = name;
    this.pop = pop;
    this.X = X;
    this.Y = Y;
    this.desc = desc;
  }
  
  
  String toString()
  {
      return  name 
                 + "\t" + pop
                 + "\t" + X
                 + "\t" + Y 
                 + "\t" + desc; 
  }

  void Exit_Screen()
  {
    background(0);
    
    text("Thanks for viewing my HUD!!", 50,50);
    
  }
  

}