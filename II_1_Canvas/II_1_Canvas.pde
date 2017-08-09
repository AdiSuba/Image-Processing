MenuBar b;
Canvas c;

void setup() {
  size(640, 480);
  b = new MenuBar();
  c = new Canvas();
}

void draw() {
  background(150);
  c.run();
  c.display();
  b.run();
  b.display();
}