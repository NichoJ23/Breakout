void game() {
  background(BLACK);
  
  paddle.update(left, right);
  ball.update();
  
  ball.display();
  paddle.display();
  
  gameUI();
}

void gameUI() {
  
}

void gameClicks() {
  
}
