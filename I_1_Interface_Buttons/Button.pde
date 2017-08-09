class Button {
  PVector pos;
  float w;
  float h;
  String name;
  PVector colour = new PVector(200, 200, 200);
  
  Button() {
    pos = new PVector(0, 0);
    name  = "";
    w = 50;
    h = 10;
  }
  Button(PVector pos) {
    this.pos = pos;
    name  = "";
    w = 50;
    h = 10;
  }
  Button(PVector pos, float w, float h) {
    name  = "";
    this.pos = pos;
    this.w = w;
    this.h = h;
  }
  Button(PVector pos, String s) {
    name  = s;
    this.pos = pos;
    this.w = 4*s.length();
    this.h = 10;
  }
  
  
  boolean hover() {
    if((mouseX > pos.x && mouseX < pos.x + 2*w) && (mouseY > pos.y && mouseY < pos.y + 2*h)) {
      colour = new PVector(160, 180, 210);
      return true;
    }
    colour = new PVector(200, 200, 200);
    return false;
  }
  void run() {
    hover();
  }
  void display() {
    strokeWeight(0);
    fill(colour.x, colour.y, colour.z);
    rect(pos.x, pos.y, 2*w, 2*h);
    if(name.length() != 0) {
      fill(0);
      text(name, pos.x + 1.5*w/name.length(), pos.y + 3*h/2);
    }
    
  }
}