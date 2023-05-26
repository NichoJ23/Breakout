void setupBricks1() {
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

void setupBricks2() {
  for (int i = 0; i < brickRows; i++) {
    bricks.add(new ArrayList<Brick>());
    for (int j = 0; j < brickColumns; j++) {
      Brick b = new Brick(new PVector(40 + j*60, 100 + i*60), 50, 0, color(0), rowColours[i]);
      bricks.get(i).add(b);
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

void setupUI() {
  introButtons = new ArrayList<ButtonShell>();
  winButtons = new ArrayList<ButtonShell>();
  gameOverButtons = new ArrayList<ButtonShell>();
  
  Executable start = () -> mode = Modes.GAME;
  Executable reset = () -> {reset(); level = 1;};
  
  introButtons.add(new RectButton(width / 2, height / 2, 200, 100, #68B2F8, BLACK, 10, "PLAY", start));
  gameOverButtons.add(new RectButton(width / 2, height * 4 / 5, 200, 100, #68B2F8, #651F71, 10, "AGAIN", reset));
  winButtons.add(new RectButton(width / 2, height * 4 / 5, 200, 100, #68B2F8, #651F71, 10, "AGAIN", reset));
}
