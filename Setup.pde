void setupBricks() {
  for (int i = 0; i < brickRows/2; i++) {
    
    bricks.add(new ArrayList<Brick>());
    for (int j = 0; j < brickColumns; j++) {
      Brick b = new Brick(new PVector(40 + j*60, 100 + i*120), 50, 0, color(0), rowColours[i*2]);
      bricks.get(i*2).add(b);
    }
    
    bricks.add(new ArrayList<Brick>());
    for (int j = 0; j < brickColumns - 1; j++) {
      Brick b = new Brick(new PVector(70 + j*60, 160 + i*120), 50, 0, color(0), rowColours[i*2 + 1]);
      bricks.get(i*2 + 1).add(b);
    }
  }
}

void setupGif() {
  for (int i = 0; i < numFrames; i++) {
    introGif[i] = loadImage("Galaxy_Gif\\frame_" + leadingZeros(i, 3) + "_delay-0.04s.gif");
  }
}

String leadingZeros(int n, int zeros) {
  String val = Integer.toString(n);
  
  while (val.length() < zeros) {
    val = "0" + val;
  }
  
  return val;
}
