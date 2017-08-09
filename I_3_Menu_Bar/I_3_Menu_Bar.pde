MenuBar b;

void setup() {
  size(640, 480);
  b = new MenuBar();
}

void draw() {
  background(255);
  b.run();
  b.display();
}