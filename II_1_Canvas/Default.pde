class Default implements Settings { 
  
  float getWidth(String s) {
    return 3.5*(s.length() + 1);
  }
  float getHeight() {
    return 10;    
  }
  PVector getColour() {
    return new PVector(220, 220, 220);
  }
  PVector getHighlight() {
    return new PVector(160, 180, 210);
  }
  
  void displayButton(PVector pos, float w, float h) {
    strokeWeight(0);
    stroke(0, 0, 0, 0);
    PVector colour = getColour();
    fill(colour.x, colour.y, colour.z);
    rect(pos.x, pos.y, 2*w, 2*h);
  }
}