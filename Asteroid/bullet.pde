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
    if(dist(location.x,location.y,ufo_.location.x,ufo_.location.y) < (ufo_.size / 2 + size / 2)){
      for(int a = 0;a<20;a++){
          myGameObjects.add(new particle(10,location.x,location.y));
        }
      explosion.play();
      ufo_.lives--;
      lives = 0;
    } 
  }
}
