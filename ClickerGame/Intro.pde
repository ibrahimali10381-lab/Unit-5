void Intro() {
  background(0);
  strokeWeight(5);
  stroke(0);
  theme.play();


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
