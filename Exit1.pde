class Exit1{
  

  void Exit_Screen()
  {
    background(0);
    fill( random(255));
    stroke(random(255),random(255),0,random(100));  // Priinting the exit screen 
    Star();
    printStars();
    fill(255);
    textSize(25);
    text("Thanks for viewing my HUD!!", 50,50);
  }
  

}