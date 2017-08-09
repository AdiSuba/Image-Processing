DropdownMenu d;

void setup() {
  size(640, 480);
  ArrayList<String> options = new ArrayList<String>();
  options.add("New");
  options.add("Open");
  options.add("Save");
  options.add("Save As");
  options.add("Export");
  d = new DropdownMenu(options);
}

void draw() {
  background(255);
  d.run();
  d.display();
}