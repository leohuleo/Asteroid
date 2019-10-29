class ufo extends GameObject{
  PVector direction;
  int cooldown;
  int threshold;
  ufo(){
    lives = 3;
    cooldown = 0;
    threshold = 60;
    location = new PVector(600,400);
    
  }
  
  void show(){
    pushMatrix();
    translate(location.x,location.y);
    image(ufo,0,0);
    popMatrix();
  }
  void act(){
    if(cooldown > threshold){
    }
  }
}
