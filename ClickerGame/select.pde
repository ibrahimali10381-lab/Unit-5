void select() {
  background(0);
  stroke(0);


  fill(randomR, randomG, randomB);
  if (frameCount%100 == 0) {
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }

  tactileRect(300, 150, 200, 100);
  rect(300, 150, 200, 100);

  stroke(0);
  tactileRect(300, 325, 200, 100);
  rect(300, 325, 200, 100);

  stroke(0);
  tactileRect(300, 500, 200, 100);
  rect(300, 500, 200, 100);

  stroke(0);
  tactileRect(300, 675, 200, 100);
  rect(300, 675, 200, 100);

  fill(255);
  textSize(50);
  text("SIZE", 400, 200);
  text("SPEED", 400, 375);
  text("TARGET", 400, 550);
  text("HOME", 400, 725);
}

void selectClicks() {
  if (mouseX>300 && mouseX <500 && mouseY>150 && mouseY<250) {
    mode = SIZE;
  }
  if (mouseX>300 && mouseX <500 && mouseY>325 && mouseY<425) {
    mode = SPEED;
  }
  if (mouseX>300 && mouseX <500 && mouseY>500 && mouseY<600) {
    mode = TARGET;
  }
  if (mouseX>300 && mouseX <500 && mouseY>675 && mouseY<775) {
    mode = INTRO;
  }
}
