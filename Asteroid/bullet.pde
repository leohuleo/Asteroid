class Bullet extends GameObject{
  Bullet(){
    location = new PVector(ship.location.x,ship.location.y);
    velocity = new PVector(ship.direction.x,ship.direction.y);
    velocity.setMag(5);
  }
  
  void show(){
    fill(255,0,0);
    ellipse(location.x,location.y,25,25);
  }
  
  void act(){
    location.add(velocity);
  }
}
