class DropdownMenu {
  PVector pos;
  Button dropdown;
  ArrayList<String> options;
  ArrayList<Button> buttons;
  String name;
  PVector colour;
  boolean selected = false;
  Settings setting = new Default();
  
  DropdownMenu(ArrayList<String> options) {
    pos = new PVector(0, 0);
    name = "File";
    dropdown = new Button(pos, name);
    init(options);
  }
  
  DropdownMenu(PVector pos, ArrayList<String> options) {
    name = "File";
    this.pos = pos.copy();
    dropdown = new Button(pos, name);
    init(options);
  }
  DropdownMenu(PVector pos, String s, ArrayList<String> options) {
    name = s;
    this.pos = pos.copy();
    dropdown = new Button(pos, name);
    init(options);
  }
  
  void init(ArrayList<String> options) {
    this.options = options;
    float w = -1;
    for(String s : options) {
      if(setting.getWidth(s) > w) w = setting.getWidth(s);
    }
    buttons = new ArrayList<Button>();
    for(int i = 0; i < options.size(); i++) {
      buttons.add(new Button(new PVector(pos.x, pos.y + 2 * (i + 1) * setting.getHeight()), w, options.get(i)));
    }
  }
  
  void hover() {
    dropdown.hover();
    if(selected) {
      dropdown.colour = setting.getHighlight();
      for(Button b : buttons) b.hover();      
    }
  }
  
  void run() {
    if(mousePressed) {
      if(dropdown.hover()) selected = true;
      else selected = false;
    }
    hover();
    display();
  }
  
  void display() {
    dropdown.display();
    if(selected) {
      for(Button b : buttons) b.display(); 
    }
  }
}