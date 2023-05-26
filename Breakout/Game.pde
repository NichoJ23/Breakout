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
  for (int i = 0; i < lives; i++) {
    drawHeart(19 + i*25, 26);
  }
  
}

void drawHeart(int x, int y) {
  fill(255);
  noStroke();
  
  pushMatrix();
  translate(-22 + x, -26 + y);
  
  triangle(19, 22, 41, 22, 30, 40);
  circle(25, 20, 12);
  circle(35, 20, 12);
  
  popMatrix();
}

void gameClicks() {
  
}
