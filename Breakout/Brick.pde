class Brick {
  PVector pos;
  int diameter;
  
  color strokeWeight;
  color strokeColour;
  color fillColour;
  
  boolean active;
  
  Brick(PVector _pos, int _diameter, color _strokeWeight, color _strokeColour, color _fillColour) {
    pos = _pos;
    diameter = _diameter;
    
    strokeWeight = _strokeWeight;
    strokeColour = _strokeColour;
    fillColour = _fillColour;
    
    active = true;
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
