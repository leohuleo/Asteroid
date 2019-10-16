class enemy extends GameObject{
  enemy(){
    location = new PVector(random(0,width),random(0,height));
    velocity = new PVector(random(-1,1),random(-5,5));
    velocity.setMag(2);
    lives = 1;
    size = 100;
  }
  
  enemy(int s){
    size = s;
    lives = 1;
    location = new PVector(random(0,width),random(0,height));
    velocity = new PVector(random(-1,1),random(-5,5));
    lives=1;
  }
  
  enemy(int s, float x, float y){
    size = s;
    lives = 1;
    location = new PVector(x,y);
    velocity = new PVector(random(-1,1),random(-5,5));
    lives=1;
  }
  void show(){
    fill(150);
    ellipse(location.x,location.y,size,size);
  }
  void act(){
  super.act();
  int i = 0;
  while(i<myGameObjects.size()){
    GameObject myObj = myGameObjects.get(i);
    if(myObj instanceof Bullet){
      if(dist(myObj.location.x,myObj.location.y,location.x,location.y) < (size/2 + 10) && size > 3){
        lives = 0;
        myObj.lives = 0;
        point++;
        if(size > 3){
        myGameObjects.add(new enemy(size/2,location.x,location.y));
        myGameObjects.add(new enemy(size/2,location.x,location.y));
        }
      }
    }else if(myObj instanceof Ship){
        if(dist(myObj.location.x,myObj.location.y,location.x,location.y) < (size/2 + myObj.size/2) && size > 25){
          lives = 0;
          myObj.lives -= 1;
        }
      }
    i++;  
    }
  }
  }
