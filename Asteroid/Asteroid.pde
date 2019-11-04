boolean upkey,downkey,leftkey,rightkey,spacekey;
import processing.sound.*;
SoundFile shoot;
SoundFile explosion;
String audioName = "shoot.mp3";
String audioName2 = "explosion.mp3";
String path2;
String path;
PImage spaceship;
PImage ufo;
PImage life;
ArrayList<GameObject> myGameObjects;
ArrayList<particle> particleList;
int mode = 0;
int point = 0;
int time = 0;
final int intro = 0;;
final int game = 1;
final int gameOver = 2;
Ship ship;
ufo ufo_;
void setup(){
  size(800,600);
  background(0);
  spaceship = loadImage("spaceships.png");
  ufo = loadImage("ufopic.png");
  ufo.resize(75,50);
  life = loadImage("life.png");
  life.resize(25,25);
  spaceship.resize(100,100);
  imageMode(CENTER);
  ship = new Ship();
  myGameObjects = new ArrayList<GameObject>();
  particleList = new ArrayList<particle>();
  path = sketchPath(audioName);
  path2 = sketchPath(audioName2);
  explosion = new SoundFile(this,path2);
  shoot = new SoundFile(this,path);
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
    myGameObjects.add(ship);
    myGameObjects.add(new enemy(100,random(0,width/2 - 100),random(0,height)));
    myGameObjects.add(new enemy(100,random(0,width/2 - 100),random(0,height)));
    myGameObjects.add(new enemy(100,random(500,width),random(0,height)));
    mode = game;
  }else if(mode == gameOver){
    mode = intro;
  }
}
