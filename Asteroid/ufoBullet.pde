class ufoBullets extends GameObject{
  int timer;
  ufoBullets(PVector position){
    location = position;
    velocity = new PVector(ship.location.x - location.x, ship.location.y - location.y);
    velocity.setMag(5);
  }
}
