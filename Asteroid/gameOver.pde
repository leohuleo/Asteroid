void gameOver(){
  background(0);
  textAlign(CENTER);
  fill(255);
  if(point != 48){
  text("Game Over",400,300);
  text("Your Score Is:" + point,400,400);
  }else{
    text("You Win!",400,300);
  }
}
