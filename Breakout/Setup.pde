void setupBricks() {
  for (int i = 0; i < brickRows/2; i++) {
    
    bricks.add(new ArrayList<Brick>());
    for (int j = 0; j < brickColumns; j++) {
      Brick b = new Brick(new PVector(40 + j*60, 100 + i*120), 50, 0, color(0), color(255));
      bricks.get(i).add(b);
    }
    
    bricks.add(new ArrayList<Brick>());
    for (int j = 0; j < brickColumns - 1; j++) {
      Brick b = new Brick(new PVector(70 + j*60, 160 + i*120), 50, 0, color(0), color(255));
      bricks.get(i).add(b);
    }
  }
}
