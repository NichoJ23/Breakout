void gameOver() {
  background(BLACK);
  
  gameOverUI();
}

void gameOverUI() {
  for (ButtonShell b: gameOverButtons) {
    b.display();
  }
  
  fill(#68B2F8);
  textSize(75);
  text("YOU LOSE", width / 2, height * 2 / 5);
}

void gameOverClicks() {
  for (ButtonShell b: gameOverButtons) {
    b.checkClick();
  }
}
