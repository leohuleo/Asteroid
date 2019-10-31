class ufo extends GameObject{
  PVector direction;
  int cooldown;
  int threshold;
  int lifetime;
  ufo(){
    lives = 3;
    cooldown = 0;
    threshold = 120;
    location = new PVector(700,1000);
    lifetime = 0;
  }
  
  void show(){
    if(lifetime < 800){
      location.y -= 1;
    }else if(lifetime >= 800 && lifetime < 1400){
      location.x -= 1;
    }else if(lifetime >= 1400 && lifetime < 2200){
      location.y += 1;
    }else{
      lives = 0;
    }
    pushMatrix();
    translate(location.x,location.y);
    image(ufo,0,0);
    popMatrix();
    lifetime++;
  }
  void act(){
    if(cooldown > threshold){
      myGameObjects.add(new ufoBullet(location));
      cooldown = 0;
    }
    cooldown++;
  }
}
