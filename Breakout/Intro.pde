void intro() {
  image(introGif[frameCount % numFrames], 0, 0, width, height);
  introUI();
}

void introUI() {
  for (ButtonShell b: introButtons) {
    b.display();
  }
  
  fill(#68B2F8);
  textSize(75);
  text("BREAKOUT", width/2, 50);
}

void introClicks() {
  for (ButtonShell b: introButtons) {
    b.checkClick();
  }
}
