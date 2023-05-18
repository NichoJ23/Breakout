enum Modes {INTRO, GAME, PAUSE, GAMEOVER, OPTIONS, LIVELOST};
Modes mode;

Paddle paddle;
Ball ball;

ArrayList<ArrayList<Brick>> bricks;

int brickRows;
int brickColumns;

int lives;

int liveLostFrame;

boolean left, right;

color BLACK = #1D0C20;
color DARK_PURPLE = #651F71;
color PURPLE = #7037CD;
color DARK_BLUE = #506EE5;
color BLUE = #68B2F8;

void setup() {
  size(800, 800);
  
  mode = Modes.GAME;
  
  paddle = new Paddle(new PVector(width/2, height), 80);
  ball = new Ball(new PVector(width/2, height /2), 2, 5, 10);
  
  bricks = new ArrayList<ArrayList<Brick>>();
  setupBricks();
  
  lives = 3;
  
  left = right = false;
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
    default:
      println("Error: " + mode + " is an invalid mode type");
  }
}
