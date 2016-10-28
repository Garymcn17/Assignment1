PShape s;
float g = 0;
float angle;
float angleIncriment;
float radius;
float size = 40;
int value = 0;

float x = 37.5;
float y = 275;
void setup()
{
  size(1090,720);
  background(0);
  
  Star();
  BackGround();
  stroke(0);
  fill(#2FF5A0);
  rect(0,400, width, height);
  triangle(0, height, width, 300, width, height);
  triangle(width, height, width/width, 300, 0, height);
  noFill();
  fill(100);
  triangle(5, height, width, 305, width, height);
  triangle(width -5, height, width/width, 305, 0, height );
  noFill();
  fill(200);
  rect(890,390, 195, 175, 5);
  noFill();
  
  
  textSize(20);
  text("Engine 1", 40, 570);
  textSize(20);
  text("Engine 2", 290, 570);
  
}

void Load()
{
  stroke(0);
  fill(#2FF5A0);
  pushMatrix();
  translate(width / width + 75, height -75);
  rotate(angle);
  angle++;
  triangle(0, size, size/2, 0, size, size);
  popMatrix();
  fill(0);
  
  stroke(0);
  fill(#2FF5A0);
  pushMatrix();
  translate(width / width + 325, height -75);
  rotate(angle);
  angle += .1;
  triangle(0, size, size/2, 0, size, size);
  popMatrix();
  fill(0);
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
  //text("Terminal 3", 855, 35);
}

void switchs()
{
  fill(#2FF5A0);
  ellipse(75, 150, 105, 85);
  ellipse(75, 350, 105, 85);
  rect(37.5,150, 75, 200);
}

void ON()
{
  if(keyPressed)
  {
   if(key == CODED)
   {
    if (keyCode == UP)
    { 
      if (y >= 150)
      {
        y = y - 1;
        if (y == 150)
        {
          fill(0);
          textSize(32);
          text("Terminal 3", 855, 35);
        }
      }
    }
    else if (keyCode == DOWN)
    {
      if ( y <= 275)
      {
        y = y + 1;
      }
    }
   }
   
  }
   fill(255,0,0);
   rect(x, y, 75, 75);
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

int x1 = 500;
int y2= 500;
void Move()
{
  if(keyPressed)
  {
   if(key == CODED)
   {
    if (keyCode == UP)
    {
      x1 = x1 + 1; 
      y2 = y2 - 1;
    }
    if (keyCode == DOWN)
    {
      x1 = x1 - 1; 
      y2 = y2 + 1;
    }
   }
   
  }
  
  //triangle(0,height, x1,y2, x1, height);
  fill(#2FF5A0);
  rect(900,400, 100, 50,x);
  rect(900,455, 125, 50,x*2);
  rect(900,510, 150, 50,x*3);
}

void draw() 
{
  Move();
  switchs();
  ON();
  Load();
}
   