class Brick {
  PVector pos;
  int diameter;
  
  float strokeWeight;
  float strokeColour;
  float fillColour;
  
  Brick(PVector _pos, int _diameter, float _strokeWeight, float _strokeColour, float _fillColour) {
    pos = _pos;
    diameter = _diameter;
    
    strokeWeight = _strokeWeight;
    strokeColour = _strokeColour;
    fillColour = _fillColour;
  }
  
  void display() {
    strokeWeight(strokeWeight);
    stroke(strokeColour);
    fill(fillColour);
    
    circle(pos.x, pos.y, diameter);
  }
  
  float getRad() {
    return diameter/2 + strokeWeight/2;
  }
}
