class Paddle {
  PVector pos;
  float dia;
  color fillColour;
  color strokeColour;
  float strokeWeight;
  
  float moveSpeed;
  
  Paddle(PVector _pos, float _dia) {
    pos = _pos;
    dia = _dia;
    
    fillColour = #64E573;
    strokeColour = #35793D;
    strokeWeight = 10;
    
    moveSpeed = 7;
  }
  
  void display() {
    fill(fillColour);
    stroke(strokeColour);
    strokeWeight(strokeWeight);
    
    circle(pos.x, pos.y, dia);
  }
  
  void update(boolean left, boolean right) {
    if (left) {
      pos.x -= moveSpeed;
      pos.x = max(0, pos.x);
    }
    
    if (right) {
      pos.x += moveSpeed;
      pos.x = min(width, pos.x);
    }
  }
  
  float getRad() {
    return dia/2 + strokeWeight/2;
  }
}
