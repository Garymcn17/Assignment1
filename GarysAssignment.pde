import processing.sound.*;
SoundFile pew;
SoundFile fart;
SoundFile missile;
ParticleSystem ps;
PImage img;
CrossHair Crosshair;
Scan Scan;
Loading_Screen Loading1;
Load Load; //data
boolean[] keys = new boolean[1000];
PShape s;
float g = 0;
float angle;
float angleIncriment;
float radius;
float size = 40;
int value = 0;
int condition = 0;
int counter = 60;
float x = 37.5;
float y = 275;
float t =0,p =0;
float z = 40;
float z1 = 0;
float b = 0;
int sound = 0;
int missileState =0;
Table table;
ArrayList <Bullet> bullets = new ArrayList <Bullet> ();
ArrayList<Load> Star_Array = new ArrayList<Load>();
PVector player, playerSpeed; // For the bullets
float maxSpeed = 3; // Speed of the bullets

Exit1 Exit1;

//Loading images, mps and creating instances of the classes
void setup()
{
  size(1090,720);
  table = loadTable("stars.tsv");
  img = loadImage("maxresdefault.jpg");
  ps = new ParticleSystem(new PVector(width/2, 50));
  Exit1 = new Exit1();
  Crosshair = new CrossHair();
  Loading1 = new Loading_Screen();
  player = new PVector(width/2, height/2 +145);
  playerSpeed = new PVector();
  Scan = new Scan();
  pew = new SoundFile(this, "Pew_Pew-DKnight556-1379997159.wav");
  fart = new SoundFile(this, "fart-08.mp3");
  missile = new SoundFile(this, "Bomb-SoundBible.com-891110113.mp3");
  loadData();
  noCursor();
  noStroke();
  smooth();
}

//Loading data from a tvs file
void loadData()
{
  for(TableRow row : table.rows() )
  {
     Load S = new Load(row.getString(0),
                    (row.getFloat(1)),
                    (row.getFloat(2)),
                    (row.getFloat(3)),
                    (row.getString(4)));

                    Star_Array.add(S);
  }
  
    for(Load S: Star_Array)
    {
  
      println(S);
    }
}

// Function to print some stars with names and sizes calculated with a scaler
void printStars()
{
  for (int i = 0; i < Star_Array.size(); i++) 
  {
    
    float x = (((Load) Star_Array.get(i)).X1);
    float y = (((Load) Star_Array.get(i)).Y1);
    float size = (((Load) Star_Array.get(i)).pop);
    String name = (((Load) Star_Array.get(i)).name);
    String desc = (((Load) Star_Array.get(i)).desc);
    
    fill(255);
    textSize(12);
    text(name +"   "+ desc, x , y + 40);
    
    fill(#9C7ED1);
    stroke(#181124);
    ellipse(x, y, size*3, size*3);
    
    if (mouseX > 525 && mouseX < 565 && mouseY < 380 && mouseY > 340 && mousePressed == true)
    {
      exit();

    }
    
  }
}

//Drawing my backgound shapes 
void BackGround()
{
  
  fill(0);
  
  rect(0,0,width, height);
  image(img, 0, 0);
  Scan.ShowScan();
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
  if( condition == 1)
  {
  text("Terminal 3", 855, 35);
  }
  
 
  
  
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
  
  fill(#2FF5A0);
  rect(25,600, 350,90);
  textSize(20);
  text("Engine 1", 40, 570);
  textSize(20);
  text("Engine 2", 290, 570);
  popMatrix();
  
   fill(#2FF5A0);
  textSize(20);
  
  text("Terminal 1 : Online", 25, 420);
  text("Terminal 2 : Online", 25, 450);
  if( condition == 1)
  {
    fill(255,0,0);
    text("Terminal 3 : Online", 25, 480);
  }
  else
  {
    text("Terminal 3 : Offline", 25, 480);
  }
  
  fill(#2FF5A0);
  rect(635,495,200,40,5);
  
  
  
}
//Drawing the switch on the left of the screen
void switchs()
{
  fill(#2FF5A0);
  ellipse(75, 150, 105, 85);
  ellipse(75, 350, 105, 85);
  rect(37.5,150, 75, 200);
}

//Used to check the state of the switch and send a signal to display the correct text
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
          condition = 1;
        }
      }
    }
    else if (keyCode == DOWN)
    {
      if ( y <= 275)
      {
        y = y + 1;
        if (y == 275)
        {
          condition = 0;
        }
      }
    }
   }
   
  if(key == 'f')    //Playing sounds based on conditions
  {
    sound = 1;
  }
  else
  {
    sound = 0;
  }
   
  if(sound == 1)
  {
    fart.play();
  }
  
  if(key =='m')
  {
    
    missileState = 1;
  }
  else
  {
    missileState = 0;
  }
  
  if(key == ' ') // If space is help it draws the missile on the screen
  {
    
    if (z < 250)
    {
      if ( b < 50)
      {
        stroke(255,0,0);
        line(width/2,height/2-z, width/2,height/2- z1);
        ellipse(width/2,height/2-z,b,b);
        
        b += .3;
      }
      else
      {
         ps.addParticle();
         ps.running();
         missile.play();
      }
    }
    z ++;
    z1 ++;
   
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
    fill(#2BD2FA,random(255));    //Generating the random twinkling stars in the loading page and the exit page
    if (x < 50 && y < 50 )
    {
      for( int j = 0; j< 440 ; j++)
      {
       fill(#FA8C1E);
       ellipse(x, y, 5,5);
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
      x1 = x1 + 1;  // This is controlling the switch on the hud
      y2 = y2 - 1;
    }
    if (keyCode == DOWN)
    {
      x1 = x1 - 1; 
      y2 = y2 + 1;
    }
   }
   
  }
  
  fill(#2FF5A0);
  if (mouseX > 900 && mouseX < 1000 && mouseY > 400 && mouseY < 450) 
  {                
    stroke(255,0,0);            // Highlighting the box as a user passes over it 
    textSize(20);
    text("Left Click to shoot", width/2, height-75);
  }
  else
  {
    stroke(0);
  }
  rect(900,400, 100, 50,x);
  if (mouseX > 900 && mouseX < 1125 && mouseY > 455 && mouseY < 505)
  {
    stroke(255,0,0);
    textSize(20);
    text("Press f to gas the enemy", width/2, height -75);
  }
  else
  {
    stroke(0);
  }
  rect(900,455, 125, 50,x*2);
  
  if (mouseX > 900 && mouseX < 1150 && mouseY > 510 && mouseY < 560)
  {
    stroke(255,0,0);
    textSize(20);
    text("Space to shoot missile", width/2, height -75);
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
  text("Fart", 930,485); //displaying text 
  text("Missile", 930,540);
}

void shoot()
{
  fill(255, 0, 0);
  ellipse(player.x, player.y, 20, 20);
  fill(255);
  ellipse(player.x, player.y, 10, 10);
 
  PVector mouse = new PVector(mouseX, mouseY);
 if(counter > 0)
 {
   fill(0);
   text ("Bullet Count : " + int(counter), 650, 520);
    if (frameCount% 12 ==0 && mousePressed) 
    {
      PVector direction = PVector.sub(mouse,player);
      direction.normalize();
      direction.mult(maxSpeed*3);
      Bullet B = new Bullet(player, direction);
      bullets.add(B);
      pew.play();
      counter --;
      
    }  
  }
  else
  {
    textSize(20);
    fill(255,0,0);
    text ("Out of bullets", 650, 520);
  }
 
  for (Bullet b : bullets) {
    b.update();
    b.display();
  }
  
}

void draw() 
{
  Loading1.Switch();
  
  if(status == 1)
  {
  BackGround();
  Loading1.Load();
  Move();
  switchs();
  ON();
  Crosshair.drawCrosshair(mouseX, mouseY);
  shoot();
  }
  if(status == 0)
  {
   Loading1.Loading();
  }
  
  if(status == 2)
  {
   Exit1.Exit_Screen();
   Crosshair.drawCrosshair(mouseX, mouseY);
  }
  
}

void keyReleased()
{
  keys[keyCode] = false; 
  if (keyCode == UP || keyCode == DOWN)    { playerSpeed.y = 0; }
  if (keyCode == LEFT || keyCode == RIGHT) { playerSpeed.x = 0; }
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}