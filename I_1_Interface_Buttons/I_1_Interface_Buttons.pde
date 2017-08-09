Button b;

void setup() {
  size(640, 480);
  b = new Button(new PVector(50, 50), "File");
}

void draw() {
  background(255);
  b.run();
  b.display();
}