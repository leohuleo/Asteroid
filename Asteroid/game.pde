void game(){
  background(0);
  int i = 0;
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
}
