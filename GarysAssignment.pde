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
  fill(200);
  rect(890,390, 195, 175, 5);
  
}

void Load()
{
  stroke(0);
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
  s.vertex(width / width + 6, height/height + 6 );
  s.vertex(25, 40);
  s.vertex(250, 40);
  s.vertex(275, 6);
  s.endShape();
  
  shape(s, 5, 0);
  shape(s, 405, 0);
  shape(s, 805, 0);
  fill(0);
  textSize(32);
  text("Terminal 1", 55, 35);
  text("Terminal 2", 455, 35);
  text("Terminal 3", 855, 35);
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
    y ++;;
  }
  else if( y < 37.5)
  {
    y --;
  }
  
}
void Star()
{
  for(int i = 0 ; i<width/4; i++)
  {
    float x = random(1090);
    float y = random(720);
    fill(#2BD2FA,random(255));
    if (x < 50 && y < 50 )
    {
      for( int j = 0; j< 440 ; j++)
      {
       fill(#FA8C1E);
       ellipse(x, y, 5,5);
       x = x +1;
       y = y + 0.1;
      }
      noStroke();
    }
    else
    {
    ellipse(x, y, 5,5);
    }
  }
  
  
  
}

void Menu()
{
  /*
  s = createShape();
  s.beginShape(RECT);
  s.fill(#2FF5A0);
  s.vertex(0, 0);
  s.vertex(0, 50);
  s.vertex(100, 50);
  s.vertex(100, 25);
  s.vertex(175, 0);
  s.endShape();
  
  if (mouseX > 900 && mouseX < 1000 && mouseY > 400 && mouseY < 560) 
  {
      stroke(#FF190D); 
      fill(0);
  }
  else 
  {
     stroke(0);
     fill(0);
  }
  
  shape(s, 900, 400);
  shape(s, 900, 455);
  shape(s, 900, 510);*/
}

void keyPressed()
{
  if(key == DOWN)
  {
    fill(255,0,0);
  }
  else
  {
    fill(#2FF5A0);
  }
  rect(900,400, 100, 50,x);
  rect(900,455, 125, 50,x*2);
  rect(900,510, 150, 50,x*3);
  
}

void draw() 
{
  keyPressed();
  Menu();
  switchs();
  ON();
  Load();
  
  
  
    
}
   