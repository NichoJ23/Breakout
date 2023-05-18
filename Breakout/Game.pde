void game() {
  background(BLACK);
  
  paddle.update(left, right);
  ball.update();
  
  ball.display();
  paddle.display();
  
  for (ArrayList<Brick> row: bricks) {
    for (Brick b: row) {
      if (b.active) b.display();
    }
  }
  
  gameUI();
}

void gameUI() {
  
}

void gameClicks() {
  
}
