void game() {
  background(0);


  //display target
  stroke(0);
  circle(x, y, d);


  //movement
  x = x + vx;
  y = y + vy;

  //bounce
  if (x-d/2 <0 || x+d/2> width) {

    vx = vx *-1;
    fill(random(255), random(255), random(255));
  }
  if (y-d/2 <0 || y+d/2> width) {

    vy = vy *-1;
    fill(random(255), random(255), random(255));
  }

  //Score
  text("Score: "+score, 100, 700);

  //Lives
  text("Lives: "+lives, 700, 700);
}

void gameClicks() {

  if (dist(mouseX, mouseY, x, y) <50 ) {
    score += 1;
    vx = vx *1.1;
    vy = vy *1.1;
  } else {
    lives -= 1;
    if (lives == 0) mode = GAMEOVER;
  }
}
