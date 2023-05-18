void liveLost() {
  background(BLACK);
  
  paddle.display();
  
  for (ArrayList<Brick> row: bricks) {
    for (Brick b: row) {
      if (b.active) b.display();
    }
  }
  
  if ((frameCount - liveLostFrame) % 60 < 30) {
    ball.display();
  }
  
  if (frameCount - liveLostFrame >= 149) {
    mode = Modes.GAME;
  }
  
  scoredUI();
}

void scoredUI() {
  
}

void scoredClicks() {
  
}
