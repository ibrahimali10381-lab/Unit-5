void mouseReleased() {
  if (mode == INTRO) {
    IntroClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == SELECT) {
    selectClicks();
  } else if (mode == SIZE) {
    SizeClicks();
  } else if (mode == SPEED) {
    SpeedClicks();
  } else if (mode == TARGET) {
    TargetClicks();
  }
}

void mouseDragged() {
  if (mode == SIZE) {
    SizeClicks();
  }
  if (mode == SPEED) {
    SpeedClicks();
  }
}

void tactileRect(int x, int y, int w, int z) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+z) {
    stroke(255, 0, 0);
  }
}
