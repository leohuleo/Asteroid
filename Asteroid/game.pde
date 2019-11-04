void game(){
  background(0);
  int i = 0;
  if(time % 1100 == 0){
    ufo_ = new ufo();
    myGameObjects.add(ufo_);
  }
  while(i < myGameObjects.size()){
      GameObject currentObject = myGameObjects.get(i);
      currentObject.show();
      currentObject.act();
      if(currentObject.lives == 0){
        if(currentObject instanceof Ship){
          mode = gameOver;
          myGameObjects.clear();
        }else{
        myGameObjects.remove(i);
        continue;
        }
      }
      i++;
    }
  fill(255);
  textSize(50);
  text("" + point,400,400);
  for(int a = 0;a<ship.lives;a++){
    image(life,50+a*30,50);
  }
  if(point == 48){
    mode = gameOver;
  }
  time++;
}
