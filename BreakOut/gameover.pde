void gameover() {
  if (win == true) {
    image(gif[f], width/2, height/2, width, height);
    f=f+1;
    if (f> 25d) {
      background(black);
      text("YOU WIN:",400,200);
    }
  }
  else{
    
  }
}


void gameoverClicks() {
}
