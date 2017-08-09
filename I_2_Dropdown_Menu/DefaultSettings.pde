class DefaultSettings { 
  
  float getWidth(String s) {
    return 4*s.length();
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