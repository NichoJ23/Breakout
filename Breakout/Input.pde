void mousePressed() {
  switch (mode) {
    case INTRO:
      introClicks();
      break;
    case GAME:
      gameClicks();
      break;
    case PAUSE:
      pauseClicks();
      break;
    case GAMEOVER:
      gameOverClicks();
      break;
    case OPTIONS:
      optionsClicks();
      break;
    default:
      println("Error: " + mode + " is an invalid mode type");
  }
}

void keyPressed() {
  if (key == 'a' || keyCode == LEFT) left = true;
  if (key == 'd' || keyCode == RIGHT) right = true;
  //if (key == 'p') mode = Modes.PAUSE;
  //if (key == ' ' && mode == Modes.GAME) {mode = Modes.PAUSE; pauseCounter = 0;}
  //if (key == ' ' && mode == Modes.PAUSE && pauseCounter > 1) mode = Modes.GAME; 
}

void keyReleased() {
  if (key == 'a' || keyCode == LEFT) left = false;
  if (key == 'd' || keyCode == RIGHT) right = false;
  //if (key == 'p') mode = Modes.GAME;
}
