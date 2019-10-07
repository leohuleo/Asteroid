boolean upkey,downkey,leftkey,rightkey,spacekey;
PImage spaceship;
ArrayList<GameObject> myGameObjects;
Ship ship;
void setup(){
  size(800,600);
  background(255);
  spaceship = loadImage("spaceship.png");
  spaceship.resize(100,100);
  imageMode(CENTER);
  ship = new Ship();
  myGameObjects = new ArrayList<GameObject>();
}

void draw(){
  background(255);
  int i = 0;
  while(i < myGameObjects.size()){
      GameObject bullet = myGameObjects.get(i);
      bullet.show();
      bullet.act();
      i++;
    }
    ship.show();
    ship.act();
  }

void keyPressed(){
  if(keyCode == UP) upkey = true;
  if(keyCode == LEFT) leftkey= true;
  if(keyCode == RIGHT) rightkey= true;
  if(keyCode == DOWN) downkey= true;
  if(key == ' ') spacekey = true;
}

void keyReleased(){
  if(keyCode == UP) upkey= false;
  if(keyCode == LEFT) leftkey= false;
  if(keyCode == RIGHT) rightkey= false;
  if(keyCode == DOWN) downkey= false;
  if(key == ' ') spacekey = false;

}
