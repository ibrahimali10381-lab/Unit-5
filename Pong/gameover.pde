void gameover() {
  background(0);
  textSize(100);
  textAlign(CENTER);
  if (score1 > score2) {
    text("MARIO WINS", (width/2), 200);
  } else {
    text("LUIGI WINS", (width/2), 200);
  }
}

void gameoverClicks() {
}
