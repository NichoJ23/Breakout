class Ball {
  PVector pos;
  PVector dir;
  float speed;
  float startSpeed;
  float speedInc;
  float dia;
  float initialSpeed;
  
  color fillColour;
  color strokeColour;
  float strokeWidth;
  
  Ball(PVector _pos, float _initialSpeed, float _speed, float _dia) {
    pos = _pos;
    dir = new PVector(1, 100).normalize();
    speed = initialSpeed = _initialSpeed;
    startSpeed = _speed;
    speedInc = 0.2;
    dia = _dia;
    
    fillColour = #FFFFFF;
    strokeWidth = 0;
  }
  
  void display() {
    fill(fillColour);
    stroke(strokeColour);
    strokeWeight(strokeWidth);
    
    circle(pos.x, pos.y, dia);
  }
  
  void update() {
    pos.add(PVector.mult(dir, speed));
    
    if (pos.y - getRad() < 0) {
      dir.y *= -1;
      pos.add(PVector.mult(dir, speed));
    }
    
    if (pos.x - getRad() < 0 || pos.x + getRad() > width) {
      dir.x *= -1;
      pos.add(PVector.mult(dir, speed));
    }
    
    if (dist(pos.x, pos.y, paddle.pos.x, paddle.pos.y) < getRad() + paddle.getRad()) {
      bouncePaddle(paddle.pos);
      //leftPaddleSound.play();
    }
    
    // Make it bounce off bricks
    for (ArrayList<Brick> row: bricks) {
      for (Brick b: row) {
        if (b.active)
          if (dist(pos.x, pos.y, b.pos.x, b.pos.y) < getRad() + b.getRad()) {
            bounceBrick(b.pos);
            b.active = false;
          }
      }
    }
    
    if (pos.y > height + getRad()) {
      lives--;
      
      if (lives <= 0) {
        mode = Modes.GAMEOVER;
        paddle.pos.x = width/2;
      } else {
        mode = Modes.LIVELOST;
        liveLostFrame = frameCount;
        reset();
        //score.play();
      }
    }
  }
  
  void bounceBrick(PVector otherPos) {
    PVector normal = PVector.sub(pos, otherPos).normalize();
    float dot = dir.x * normal.x + dir.y * normal.y;
    dir.x -= 2 * normal.x * dot;
    dir.y -= 2 * normal.y * dot;
    dir.normalize();
    
    
    pos.add(PVector.mult(dir, speed));
      
    speed += 0.1;
  }
  
  void bouncePaddle(PVector otherPos) {
    dir = PVector.sub(pos, otherPos).normalize();
    
    speed = max(speed, startSpeed);
    pos.add(PVector.mult(dir, speed));
      
    speed += 0.1;
  }
  
  void reset() {
    pos = new PVector(width / 2, 450);
    speed = initialSpeed;
    dir = new PVector(1, 100).normalize();
  }
  
  float getRad() {
    return dia/2 + strokeWidth/2;
  }
  
  
}
