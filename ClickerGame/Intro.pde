void Intro() {
  background(0);
  strokeWeight(5);
  stroke(0);
  theme.play();
  if (frameCount >= 2000){
   theme.rewind(); 
  }


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
    fill(randomR, randomG, randomB);
    textSize(d);
    text("D",x,y);
    text("V",x+d/2,y);
    text("D",x+d,y);
    ellipse(x+d/2,y+50,d*1.7,d/2.5);
  }
}
