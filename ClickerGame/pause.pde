void pause() {
  theme.pause();
  textSize(100);
  text("PAUSE",400,400);
}

void pauseClicks() {
  if (mouseX>25 &&mouseX<85 && mouseY>50 && mouseY<150) {
    mode = GAME;
  }
}
