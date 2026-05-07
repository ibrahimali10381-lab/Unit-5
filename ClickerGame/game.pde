void game() {
  background(0);


  //display target
  stroke(0);

  fill(255);
  circle(x, y, d);

  fill(randomR, randomG, randomB);
  circle(x, y, d/1.25);

  fill(255);
  circle(x, y, d/1.7);

  fill(randomR, randomG, randomB);
  circle(x, y, d/3);


  //movement
  x = x + vx;
  y = y + vy;

  //bounce
  if (x-d/2 <0 || x+d/2> width) {

    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
    fill(randomR, randomG, randomB);
    vx = vx*-1;
  }
  if (y-d/2 <0 || y+d/2> width) {

    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
    fill(randomR, randomG, randomB);
    vy = vy*-1;
  }

  //Score
  text("Score: "+score, 100, 700);

  //Lives
  text("Lives: "+lives, 700, 700);
}

void gameClicks() {

  if (dist(mouseX, mouseY, x, y) <50 ) {
    score += 1;
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
    fill(randomR, randomG, randomB);
    hit.setGain(6);
    hit.rewind();
    hit.play();
  } else {
    lives -= 1;
    if (lives == 0) mode = GAMEOVER;
  }
}
