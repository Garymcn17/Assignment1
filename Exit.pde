class Exit{
  
  String name;
  float pop; // size
  float X;
  float Y;
  String desc;
  
   Star(String name, float pop, float X, float Y, String desc)
  {
    this.name = name;
    this.pop = pop;
    this.X = X;
    this.Y = Y;
    this.desc = desc;
  }
  
  void loadData()
{
  for(TableRow row : table.rows() )
  {
     Exit S = new Star1(row.getInt(2),
                    (row.getString(3)),
                    (row.getFloat(12)),
                    (row.getFloat(13)),
                    (row.getFloat(14)),
                    (row.getFloat(15)),
                    (row.getFloat(16)));
                    
                    Star_Array.add(S);
  }
  
    for(Exit S: Star_Array)
    {
  
      println(S);
    }
}

  void Exit_Screen()
  {
    background(0);
    
    text("Thanks for viewing my HUD!!", 50,50);
    
  }
  

}