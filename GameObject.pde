abstract class GameObject{
  int lives;
  int size;
  PVector location;
  PVector velocity;
  
  GameObject(){}
  
  void show(){}
  
  void act(){
    location.add(velocity);
    if (location.x > width + size/2) {
      location.x = - size/2;
    }
    if (location.x < -size/2) {
      location.x += width + size/2;
    }
    if (location.y > height + size/2) {
      location.y = -size/2;
    }
    if (location.y < -size/2) {
      location.y += height + size/2;
    } 
  }
}
