class ufo extends GameObject{
  PVector direction;
  int cooldown;
  int threshold;
  int lifetime;
  ufo(){
    lives = 2;
    cooldown = 0;
    threshold = 90;
    location = new PVector(700,800);
    lifetime = 0;
    size = 100;
  }
  
  void show(){
       if(lifetime < 350){

      location.y -= 2;
    }else if(lifetime >= 350 && lifetime < 650){

      location.x -= 2;

    }else if(lifetime >= 650 && lifetime < 1000){

      location.y += 2;

    }else{

      lives = 0;

    }
    pushMatrix();
    translate(location.x,location.y);
    ufo.resize(size,size - 50);
    image(ufo,0,0);
    popMatrix();
    lifetime++;
  }
  void act(){
    if(cooldown > threshold){
      myGameObjects.add(new ufoBullets());
      cooldown = 0;
    }
    cooldown++;
  }
}
