void win() {
  background(BLACK);
  winUI();
}

void winUI() {
  for (ButtonShell b: winButtons) {
    b.display();
  }
  
  fill(#68B2F8);
  textSize(75);
  text("YOU WIN", width / 2, height * 2 / 5);
  
  textSize(50);
  text("Lives Left: " + lives, width / 2, height * 2 / 5 + 75);
}

void winClicks() {
  for (ButtonShell b: winButtons) {
    b.checkClick();
  }
}
