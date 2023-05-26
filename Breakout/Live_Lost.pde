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
  
  liveLostUI();
}

void liveLostUI() {
  for (int i = 0; i < lives; i++) {
    drawHeart(19 + i*25, 26);
  }
}

void liveLostClicks() {
  
}
