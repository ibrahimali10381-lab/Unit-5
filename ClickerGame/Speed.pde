void speed() {
  background(0);
  fill(randomR, randomG, randomB);
  if (frameCount%100 == 0) {
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }
  strokeWeight(5);
  stroke(255);
  line(250, 450, 600, 450);


  strokeWeight(1);
  if (mouseX>250 && mouseX<600 && mouseY <475 && mouseY >425) {
    strokeWeight(5);
    stroke(255, 0, 0);
  }
  circle(sliderSpeed, 450, 25);
  strokeWeight(5);


  stroke(0);
  tactileRect(300, 675, 200, 100);
  rect(300, 675, 200, 100);
  stroke(0);


  fill(255);
  textSize(50);
  text("HOME", 400, 725);
  text("SPEED", 400, 100);
}

void SpeedClicks() {
  if (mouseX>300 && mouseX <500 && mouseY>675 && mouseY<775) {
    mode = INTRO;
  }
  SliderSpeed();
}

void SliderSpeed() {
  if (mouseX>250 && mouseX<600 && mouseY <475 && mouseY >425) {
    sliderSpeed = mouseX;
  }
  s = map(sliderX, 250, 600, 1, 30);
  vx = s*cos(random(360));
  vy = s*sin(random(360));
}
