class Button {
  PVector pos;
  float w;
  float h;
  String name;
  PVector colour = new PVector(200, 200, 200);
  Settings setting = new Default();
  
  Button() {
    pos = new PVector(0, 0);
    name  = "";
    w = 50;
    h = 10;
  }
  Button(PVector pos) {
    this.pos = pos.copy();
    name  = "";
    w = 50;
    h = 10;
  }
  Button(PVector pos, float w, float h) {
    name  = "";
    this.pos = pos.copy();
    this.w = w;
    this.h = h;
  }
  
  Button(PVector pos, String s) {
    name  = s;
    this.pos = pos.copy();
    this.w = setting.getWidth(s);
    this.h = setting.getHeight();
  }
  
  Button(PVector pos, float w, String s) {
    name  = s;
    this.pos = pos.copy();
    this.w = w;
    this.h = setting.getHeight();
  }
  
  boolean hover() {
    if((mouseX > pos.x && mouseX < pos.x + 2*w) && (mouseY > pos.y && mouseY < pos.y + 2*h)) {
      colour = setting.getHighlight();
      return true;
    }
    colour = setting.getColour();
    return false;
  }
  
  void run() {
    hover();
  }
  void display() {
    strokeWeight(0);
    stroke(0, 0, 0, 0);
    fill(colour.x, colour.y, colour.z);
    rect(pos.x, pos.y, 2*w, 2*h);
    if(name.length() != 0) {
      fill(0);
      text(name, pos.x + setting.getWidth(""), pos.y + 3*h/2);
    }
    
  }
}