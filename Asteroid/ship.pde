class Ship extends GameObject{
  //1.instance variables
  PVector direction;
  //2.constructor(s)
  Ship(){
    lives = 3;
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0,-0.1);
  }
  
  //3.behavior function
  void show(){
    pushMatrix();
    translate(location.x,location.y);
    rotate(direction.heading());
    image(spaceship,0,0);
    popMatrix();
  }
  
  void act(){
    location.add(velocity);
    if(upkey) velocity.add(direction);
    if(downkey) velocity.sub(direction);
    if(leftkey) direction.rotate(-radians(2));
    if(rightkey) direction.rotate(radians(2));
    if(spacekey) myGameObjects.add(new Bullet());
    if(location.x > width + 50){
      location.x = - 50;
    }
    if(location.x < -50){
      location.x += width + 50;
    }
    if(location.y > height + 50){
      location.y = -50;
    }
    if(location.y < -50){
      location.y += height + 50;
    }
    
  }
}
