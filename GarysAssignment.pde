PShape s;
float g = 0;
float angle;
float angleIncriment;
float radius;
float size = 40;
int value = 0;

float x = 37.5;
float y = 150;
void setup()
{
  size(1090,720);
  background(0);
  
  Star();
  BackGround();
  
  
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
  s = createShape();
  s.beginShape(RECT);
  s.fill(#2FF5A0);
  s.vertex(6, 6);
  s.vertex(25, 25);
  s.vertex(150, 25);
  s.vertex(175, 6);
  s.endShape();
  
  shape(s, 5, 0);
  shape(s, 305, 0);
  shape(s, 605, 0);
  shape(s, 905, 0);
  fill(#2FF5A0);
}

void switchs()
{
  fill(#2FF5A0);
  ellipse(75, 150, 105, 85);
  ellipse(75, 350, 105, 85);
  rect(37.5,150, 75, 200);
}

void mouseClicked()
{
  if (value == 0) 
  {
    value = 255;
  } 
  else 
  {
    value = 0;
  }
}
void ON()
{
  fill(255,0,0);
  rect(x, y, 75, 75);
  
  if(y != 275)
  {
    y ++;
  }
  else
  {
    while( y != 150)
    {
      y --;
    }
  }
}

void Star()
{
  for(int i = 0 ; i<width/4; i++)
  {
    float x = random(1090);
    float y = random(720);
    fill(#2BD2FA,150);
    ellipse(x, y, 5,5);
  }
  
}

void Menu()
{
  s = createShape();
  s.beginShape(RECT);
  s.fill(#2FF5A0);
  s.vertex(0, 0);
  s.vertex(0, 50);
  s.vertex(100, 50);
  s.vertex(100, 25);
  s.vertex(175, 0);
  s.endShape();
  
  shape(s, 900, 400);
  shape(s, 900, 455);
  shape(s, 900, 510);
  
  
}

void draw() 
{
  Menu();
  switchs();
  ON();
  Load();
  
  
  
    
}
   