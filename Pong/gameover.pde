void gameover() {
  background(0);
  textSize(100);
  textAlign(CENTER);
  if (score1 > score2) {
    fill(pink);
    text("MARIO WINS", (width/2), 200);
    imageMode(CENTER);
    image(mario, 400, 400, 100, 100);
    imageMode(CORNER);
  } else {
    fill(green);
    text("LUIGI WINS", (width/2), 200);
    imageMode(CENTER);
    image(luigi, 400, 400, 100, 100);
    imageMode(CORNER);
  }
}

void gameoverClicks() {
  mode = INTRO;
  score1 = 0;
  score2 = 0;
  a = 15;
}
