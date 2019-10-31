class particle extends GameObject{
  int size;
  PVector velocity;
  PVector location;
  
  particle(int s,float x,float y){
    size = s;
    location = new PVector(x,y);
    velocity = new PVector(random(-3,3),random(-3,3));
    lives = int(random(50,100));
  }
  void show(){
    smooth();
    fill(255);
    strokeWeight(1);
    ellipse(location.x,location.y,size,size);
  }
  void act(){
    if(lives > 0){
    location.add(velocity);
    lives--;  
    }
  }
}
