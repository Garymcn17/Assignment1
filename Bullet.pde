class Bullet extends PVector 
{
  PVector velocity;
 
  Bullet(PVector pos, PVector velocity) 
  {
    super(pos.x, pos.y);
    this.velocity = velocity.get();
  }
 
  void update() {
    add(velocity);
  }
 
  void display() {
    fill(0, 0, 255);
    ellipse(x, y, 3, 3);
  }
 
  
}