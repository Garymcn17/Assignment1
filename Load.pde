class Load{
  
  String name;
  float pop; // size
  float X1;
  float Y1;
  String desc;
  
   Load(String name, float pop, float X1, float Y1, String desc) // constructor for reading in the data
  {
    this.name = name;
    this.pop = pop;
    this.X1 = X1;
    this.Y1 = Y1;
    this.desc = desc;
  }
  
  
  String toString() // Formatting the output of the text
  {
      return  name  
                 + "\t" + pop
                 + "\t" + X
                 + "\t" + Y 
                 + "\t" + desc; 
  }

  

}