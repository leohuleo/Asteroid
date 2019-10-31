class Bullet extends GameObject{
  int timer;
  Bullet(){
    location = new PVector(ship.location.x,ship.location.y);
    velocity = new PVector(ship.direction.x,ship.direction.y);
    velocity.setMag(5);
    lives = 1;
    size = 10;
    timer = 90;
  }
  
  void show(){
    fill(255,0,0);
    ellipse(location.x,location.y,size,size);
  }
  
  void act(){
    super.act();
    timer--;
    if(timer == 0){
      lives = 0;
    }
  }
}
