void mouseReleased(){
  if (mode == INTRO) {
    IntroClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void tactileRect(int x, int y, int w, int z){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+z){
    stroke(255,0,0);
  }
}
