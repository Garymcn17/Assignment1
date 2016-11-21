class CrossHair
{
  
  float x ,y;
  
  
  void drawCrosshair(float x, float y) 
  {
    noFill();
    stroke(255);
    ellipse(mouseX, mouseY, 60, 60);
    rect(mouseX - 10, mouseY - 10, 20, 20);
    line (mouseX, mouseY - 15, mouseX, mouseY + 15);
    line (mouseX - 15, mouseY, mouseX + 15, mouseY);
    
  }
  
}