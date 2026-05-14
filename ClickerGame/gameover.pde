void gameover() {
  background(0);
  theme.pause();
  gameover.play();
  if (score>= highScore) {
    highScore = score;
    score = 0;
    lives = 3;
    y= height/2;
    x = width/2;
    vx = s*cos(random(360));
    vy = s*sin(random(360));
  } else {
    score = 0;
    lives = 3;
    y= height/2;
    x = width/2;
    vx = s*cos(random(360));
    vy = s*sin(random(360));
  }

  textSize(100);
  text("GAMEOVER", 400, 400);

  text("High Score: "+ highScore, 400, 600);
}

void gameoverClicks() {
  mode = INTRO;
}
