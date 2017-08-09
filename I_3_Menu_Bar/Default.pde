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
}