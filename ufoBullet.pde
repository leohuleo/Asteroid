class ufoBullet extends GameObject{
  int timer;
  ufoBullet(PVector position){
    location = position;
    velocity = new PVector(ship.location.x - location.x, ship.location.y - location.y);
    velocity.setMag(5);
    lives = 1;
    size = 15;
    timer = 300;
  }
  
  void show(){
    fill(0,255,0);
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
