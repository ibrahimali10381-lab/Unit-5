void Size() {
  background(0);

  fill(randomR, randomG, randomB);
  if (frameCount%100 == 0) {
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }

  targetShape(targetType, 400, 300, d);

  strokeWeight(5);
  stroke(255);
  line(250, 450, 600, 450);


  strokeWeight(1);
  if (mouseX>250 && mouseX<600 && mouseY <475 && mouseY >425) {
    strokeWeight(5);
    stroke(255, 0, 0);
  }
    circle(sliderX, 450, 50);
    strokeWeight(5);


    stroke(0);
    tactileRect(300, 675, 200, 100);
    rect(300, 675, 200, 100);
    stroke(0);


    fill(255);
    textSize(50);
    text("HOME", 400, 725);
    text("SIZE", 400, 100);
  }

  void SizeClicks() {
    if (mouseX>300 && mouseX <500 && mouseY>675 && mouseY<775) {
      mode = INTRO;
    }
    SliderX();
  }



  void SliderX() {
    if (mouseX>250 && mouseX<600 && mouseY <475 && mouseY >425) {
      sliderX = mouseX;
    }
    d = map(sliderX, 250, 600, 50, 255);
  }
