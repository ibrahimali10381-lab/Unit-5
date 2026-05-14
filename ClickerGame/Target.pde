void target() {
  background(0);
  fill(randomR, randomG, randomB);
  if (frameCount%100 == 0) {
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }

  targetShape(0, 200, 200, (width+height)/16);
  targetShape(1, 400, 200, (width+height)/16);
  targetShape(2, 600, 200, (width+height)/16);






  stroke(0);
  tactileRect(300, 675, 200, 100);
  rect(300, 675, 200, 100);
  stroke(0);


  fill(255);
  textSize(50);
  text("HOME", 400, 725);
}

void TargetClicks() {
  if (dist(mouseX,mouseY,200,200)<d) {
    targetType = 0;
  }
  if (dist(mouseX,mouseY,400,200)<d) {
    targetType = 1;
  }
  if (dist(mouseX,mouseY,600,200)<d) {
    targetType = 2;
  }

  if (mouseX>300 && mouseX <500 && mouseY>675 && mouseY<775) {
    mode = INTRO;
  }
}
