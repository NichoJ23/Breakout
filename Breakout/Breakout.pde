enum Modes {INTRO, GAME, PAUSE, GAMEOVER, OPTIONS, LIVELOST, WIN};
Modes mode;

Paddle paddle;
Ball ball;

ArrayList<ArrayList<Brick>> bricks;

color[] rowColours = {#68B2F8, #68B2F8, #506EE5, #506EE5, #7037CD, #651F71};

int brickRows;
int brickColumns;

int level;

int lives;

int liveLostFrame;

boolean left, right;

color BLACK = #1D0C20;
color DARK_PURPLE = #651F71;
color PURPLE = #7037CD;
color DARK_BLUE = #506EE5;
color BLUE = #68B2F8;

PImage[] introGif;
int numFrames;

ArrayList<ButtonShell> introButtons, winButtons, gameOverButtons;

void setup() {
  size(800, 600);
  
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  textFont(createFont("SPACE.ttf", 200));
  
  mode = Modes.INTRO;
  
  paddle = new Paddle(new PVector(width/2, height), 80);
  ball = new Ball(new PVector(width/2, 450), 1, 3, 10);
  
  brickRows = 6;
  brickColumns = 13;
  bricks = new ArrayList<ArrayList<Brick>>();
  setupBricks1();
  
  level = 1;
  
  lives = 3;
  
  left = right = false;
  
  numFrames = 180;
  introGif = new PImage[numFrames];
  
  setupGif();
  setupUI();
}

void draw() {
  switch (mode) {
    case INTRO:
      intro();
      break;
    case GAME:
      game();
      break;
    case PAUSE:
      pause();
      break;
    case GAMEOVER:
      gameOver();
      break;
    case OPTIONS:
      options();
      break;
    case LIVELOST:
      liveLost();
      break;
    case WIN:
      win();
      break;
    default:
      println("Error: " + mode + " is an invalid mode type");
  }
}

boolean checkWin() {
  boolean anyLeft = false;
  
  for (ArrayList<Brick> row: bricks) {
    for (Brick b: row) {
      if (b.active) anyLeft = true;
    }
  }
  
  return !anyLeft;
}

void reset() {
  ball.reset();
  
  paddle.pos.x = width / 2;
  paddle.pos.y = height;
    
  bricks = new ArrayList<ArrayList<Brick>>();
  setupBricks1();
  
  if (mode == Modes.GAMEOVER) {
    lives = 3;
  } else {
    lives += 2;
  }
  
  left = right = false;
  
  mode = Modes.GAME;
}

void nextLevel() {
  bricks = new ArrayList<ArrayList<Brick>>();
  setupBricks2();
}
