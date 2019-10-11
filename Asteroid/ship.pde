class Ship extends GameObject {
  //1.instance variables
  PVector direction;
  int cooldown;
  int threshold;
  //2.constructor(s)
  Ship() {
    lives = 3;
    cooldown = 0;
    threshold = 30;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
  }

  //3.behavior function
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    image(spaceship, 0, 0);
    popMatrix();
  }

  void act() {
    super.act();
    if (upkey) velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(2));
    if (rightkey) direction.rotate(radians(2));
    if (spacekey && cooldown > threshold){
    myGameObjects.add(new Bullet());
    cooldown = 0;
    }
    cooldown ++;
  }
}
