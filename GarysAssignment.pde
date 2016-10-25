PShape s;
float g = 0;
float angle;
float angleIncriment;
float radius;
float size = 40;

void setup()
{
  size(1090,720);
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
  BackGround();
  
  
    angle = 1;
    angleIncriment = 5/PI;
    radius = 0;
}

void Load()
{
  fill(#2FF5A0);
  translate(width / width + 75, height -75);
  rotate(angle);
  angle++;

    triangle(0, size, size/2, 0, size, size);
}

void BackGround()
{
  shape(s, 5, 0);
  shape(s, 305, 0);
  shape(s, 605, 0);
  shape(s, 905, 0);
  
}

void draw() 
{
  Load();
  
  //s.rotate(g + 0.1);
}
   