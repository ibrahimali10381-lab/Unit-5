void Intro() {
  image(background, 0, 0, height, width);
  
  theme.play();

  if (time ==1 && cloudOn == false) {
    cloudOn = true;
    cloudY = random(0, 300);
  }
  if (cloudOn == true && cloudMove <width) {
    image(cloud, cloudMove, cloudY, 300, 100);
    cloudMove += 1;
  } else if (cloudMove < width){
    time = 0;
  cloudMove = 0;
}

strokeWeight(5);
stroke(0);

vx = s*cos(random(360));
vy = s*sin(random(360));


tactileRect(300, 500, 200, 100);
rect(300, 500, 200, 100);
textSize(100);

stroke(0);
tactileRect(300, 650, 200, 100);
rect(300, 650, 200, 100);
textSize(100);

fill(pink);
text("MARIO", 250, 200);

fill(green);
text("PONG", 550, 200);

fill(pink);
textSize(50);
text("1 PLAYER", 400, 575);
fill(255);

fill(green);
textSize(50);
text("2 PLAYER", 400, 725);
fill(255);

time += 1;
}

void IntroClicks() {
  if (mouseX>300 && mouseX <500 && mouseY>650 && mouseY<750) {
    mode = GAME;
    AI = false;
  }
  if (mouseX>300 && mouseX <500 && mouseY>500 && mouseY<600) {
    mode = GAME;
    AI = true;
  }
}


void tactileRect(int x, int y, int w, int z) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+z) {
    stroke(255, 0, 0);
  }
}
