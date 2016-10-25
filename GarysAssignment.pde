PShape s;
float angle;
float g = 0;
void setup()
{
  size(1080,720);
  background(0);
  
  s = createShape();
  s.beginShape(RECT);
  s.fill(#2FF5A0);
  s.vertex(6, 6);
  s.vertex(25, 25);
  s.vertex(150, 25);
  s.vertex(175, 6);
  s.endShape();
  s.noStroke();
  
}

/*void Load()
{
  rectMode(CORNER);
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
  rect(0, 0, 30, 30); 
}
*/
void BackGround()
{
  shape(s, 5, 0);
  shape(s, 305, 0);
  shape(s, 605, 0);
  shape(s, 905, 0);
  
}

void draw() 
{
  //Load();
  BackGround();
  s.rotate(g + 0.1);
}
   