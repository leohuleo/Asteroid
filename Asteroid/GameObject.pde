abstract class GameObject{
  int lives;
  int size;
  PVector location;
  PVector velocity;
  
  GameObject(){}
  
  void show(){}
  
  void act(){
    location.add(velocity);
    if (location.x > width + 50) {
      location.x = - 50;
    }
    if (location.x < -50) {
      location.x += width + 50;
    }
    if (location.y > height + 50) {
      location.y = -50;
    }
    if (location.y < -50) {
      location.y += height + 50;
    } 
  }
}
