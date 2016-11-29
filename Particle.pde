class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector pos) 
  {
    acceleration = new PVector(0, 0.1);
    velocity = new PVector(random(-1, 1), random(-2, 0)); // calculates the direction of the particles
    position = pos.copy(); // this is used to copy the position of the PVector pos
    lifespan = 400.0;
  }

  void running() {
    update();
    display();
  }

  // How to update the position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  // How to display the particles
  void display() 
  {
    stroke(255,0,0, lifespan);
    fill(random(255),0,0, lifespan);
    ellipse(position.x, position.y+100, 7, 7); // where to draw my paticles
  }

  // Are particles alive
  boolean alive() 
  {
    if (lifespan < 0.0) 
    {
      return true;
    } 
    else 
    {
      return false;
    }
  }
}