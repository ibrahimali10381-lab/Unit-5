void Intro() {
  background(0);
  strokeWeight(5);
  stroke(0);
  theme.play();
  hyperMode = false;

  if (frameCount >= 2000) {
    theme.rewind();
  }

  vx = s*cos(random(360));
  vy = s*sin(random(360));

  fill(randomR, randomG, randomB);
  if (frameCount%100 == 0) {
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }
  tactileRect(300, 500, 200, 100);
  rect(300, 500, 200, 100);
  textSize(100);

  stroke(0);
  tactileRect(300, 650, 200, 100);
  rect(300, 650, 200, 100);
  textSize(100);

  text("CLICKER RAMA", 400, 200);

  fill(255);
  textSize(50);
  text("START", 400, 550);
  fill(255);
  textSize(50);
  text("OPTIONS", 400, 700);
}
void IntroClicks() {
  if (mouseX>300 && mouseX <500 && mouseY>500 && mouseY<600) {
    mode = GAME;
  }
  if (mouseX>300 && mouseX <500 && mouseY>650 && mouseY<750) {
    mode = SELECT;
  }
}


void targetShape(int num, float x, float y, float d) {
  if (num == 0) {
    fill(255);
    circle(x, y, d);

    fill(randomR, randomG, randomB);
    circle(x, y, d/1.25);

    fill(255);
    circle(x, y, d/1.7);

    fill(randomR, randomG, randomB);
    circle(x, y, d/3);
  } else if (num == 1) {
    fill(randomR, randomG, randomB);
    circle(x, y, d);
  } else if (num == 2) {
    pushMatrix();
    translate(x, y);
    fill(randomR, randomG, randomB);
    stroke(randomR, randomG, randomB);
    strokeWeight(2);
    ellipse(0, d * 0.2, d * 1.5, d * 0.4);
    textAlign(CENTER, CENTER);
    textSize(d * 0.6);
    text("DVD", 0, -d * 0.1);
    noStroke();
    popMatrix();
  }
}
