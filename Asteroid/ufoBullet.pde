class ufoBullets extends GameObject {
  int timer;
  ufoBullets() {
    location = new PVector(ufo_.location.x, ufo_.location.y);
    velocity = new PVector(ship.location.x - location.x, ship.location.y - location.y);
    velocity.setMag(4);
    lives = 1;
    timer = 180;
  }

  void show() {
    fill(0, 255, 0);
    ellipse(location.x, location.y, 15, 15);
  }

  void act() {
    super.act();
    timer--;
    if (timer == 0) {
      lives = 0;
    }
    if(dist(location.x,location.y,ship.location.x,ship.location.y) < (ship.size / 2 - 30 + size / 2)){
      ship.lives --;
      lives = 0;
    }
  }
}
