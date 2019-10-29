void game(){
  background(0);
  int i = 0;
  time++;
  if(time % 500 == 0){
    myGameObjects.add(new ufo());
  }
  while(i < myGameObjects.size()){
      GameObject currentObject = myGameObjects.get(i);
      currentObject.show();
      currentObject.act();
      if(currentObject.lives == 0){
        if(currentObject instanceof Ship){
          mode = gameOver;
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
}
