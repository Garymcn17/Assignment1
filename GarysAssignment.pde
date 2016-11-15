CrossHair Crosshair;
Loading_Screen Loading1;
boolean[] keys = new boolean[1000];
PShape s;
float g = 0;
float angle;
float angleIncriment;
float radius;
float size = 40;
int value = 0;

float x = 37.5;
float y = 275;
float t =0,p =0;
void setup()
{
  size(1090,720);
  
  Crosshair = new CrossHair();
  Loading1 = new Loading_Screen();
  Star();
 
 
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
  angle += .01;
  triangle(0, size, size/2, 0, size, size);
  popMatrix();
  fill(0);
 
}

void drawAstoroid(float t, float p) 
{
  fill(134, 1, 10);
  beginShape();
  vertex(t, p);
  vertex(t + 30, p);
  vertex(t + 40, p - 20);
  vertex(t + 30, p - 30);
  vertex(t, p - 40);
  vertex(t - 20, p - 20);
  endShape();
}

void BackGround()
{
  fill(0);
  rect(0,0,width, height);
  
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
  
  pushMatrix();
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
  popMatrix();
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
  if (mouseX > 900 && mouseX < 1000 && mouseY > 400 && mouseY < 450)
  {
    stroke(255,0,0);
  }
  else
  {
    stroke(0);
  }
  rect(900,400, 100, 50,x);
  if (mouseX > 900 && mouseX < 1125 && mouseY > 455 && mouseY < 505)
  {
    stroke(255,0,0);
  }
  else
  {
    stroke(0);
  }
  rect(900,455, 125, 50,x*2);
  
  if (mouseX > 900 && mouseX < 1150 && mouseY > 510 && mouseY < 560)
  {
    stroke(255,0,0);
  }
  else
  {
    stroke(0);
  }
  rect(900,510, 150, 50,x*3);
  stroke(0);
  fill(0);
  textSize(20);
  text("Gun", 930,430);
  text("Fart", 930,485);
  text("Missile", 930,540);
}

void draw() 
{
  Loading1.Switch();
  
  if(status == 1)
  {
  BackGround();
  Move();
  switchs();
  ON();
  Load();
  Crosshair.drawCrosshair(mouseX, mouseY);
  }
  if(status == 0)
  {
   Loading1.Loading();
  }
}

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}
   