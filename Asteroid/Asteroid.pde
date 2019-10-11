boolean upkey,downkey,leftkey,rightkey,spacekey;
PImage spaceship;
ArrayList<GameObject> myGameObjects;
int mode = 0;
int point = 0;
final int intro = 0;;
final int game = 1;
final int gameOver = 2;
Ship ship;
void setup(){
  size(800,600);
  background(0);
  spaceship = loadImage("spaceships.png");
  spaceship.resize(100,100);
  imageMode(CENTER);
  ship = new Ship();
  myGameObjects = new ArrayList<GameObject>();
  myGameObjects.add(ship);
  myGameObjects.add(new enemy());
  myGameObjects.add(new enemy());
  myGameObjects.add(new enemy());
}

void draw(){
  if(mode == intro){
    intro();
  }else if(mode == game){
    game();
  }else{
    gameOver();
  }
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
void mouseReleased(){
  if(mode == intro){
    mode = game;
  }else if(mode == game){
    mode = gameOver;
  }else{
    mode = intro;
  }
}
