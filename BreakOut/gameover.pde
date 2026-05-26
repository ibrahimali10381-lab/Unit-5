void gameover() {
  if (win == true) {
    image(gif[f], width/2, height/2, width, height);
    f=f+1;
    if (f> 26) {
      background(black);
      text("YOU WIN:",400,200);
    }
  }
}

void show() {
}

void gameoverClicks() {
}
