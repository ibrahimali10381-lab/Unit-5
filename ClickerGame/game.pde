void game() {
  background(0);
  theme.play();

  //Pause button
  fill(255);
  rect(25, 50, 25, 100);
  rect(60, 50, 25, 100);


  //display target
  stroke(0);
  targetShape(targetType, x, y, d);


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
  textSize(50);
  text("Score: "+score, 100, 700);

  //Lives
  text("Lives: "+lives, 700, 700);


  //hyper
  if (timer >= 100) {
    multiplier = 1;
    vy = vy/2;
    vx = vx/2;
    timer = 0;
    hyperMode = false;
  } else if (score != 0 && score%20 == 0 && timer < 2) {
    multiplier = 2;
    vx = vx*1.5;
    vy = vy *1.5;
    hyperMode = true;
    timer += 1;
  } else if (hyperMode == true) {
    textSize(100);
    text("HYPER!!!", 400, 100);
    timer += 1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) <d/2 && targetType != 2) {
    score += 1*multiplier;
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
    fill(randomR, randomG, randomB);
    hit.setGain(6);
    hit.rewind();
    hit.play();
  } else if ( targetType == 2 && mouseX>x && mouseX<x+2*d && mouseY> y-20 && mouseY<y+2*d) {
    score += 1*multiplier;
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
    fill(randomR, randomG, randomB);
    hit.setGain(6);
    hit.rewind();
    hit.play();
  } else if (mouseX>25 &&mouseX<85 && mouseY>50 && mouseY<150) {
    mode = PAUSE;
  } else {
    lives -= 1;
    miss.setGain(6);
    miss.rewind();
    miss.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
