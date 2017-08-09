class MenuBar {
  ArrayList<String> names;
  ArrayList<DropdownMenu> menus;
  Settings setting = new Default();
  
  MenuBar() {
    names = new ArrayList<String>();
    addMenuNames();
    PVector pos = new PVector(0, 0);
    menus = new ArrayList<DropdownMenu>();
    for(int i = 0; i < names.size(); i++) {
      menus.add(new DropdownMenu(pos, names.get(i), addMenu(i)));
      pos.x += 2 * setting.getWidth(names.get(i));
    }
  }
  
  void addMenuNames() {
    names.add("File");
    names.add("Edit");
    names.add("View");
    names.add("Tools");
  }
  
  ArrayList<String> addMenu(int i) {
    switch(i) {
      case 0:
        return addFileMenuOptions();
      case 1:
        return addEditMenuOptions();
      case 2:
        return addViewMenuOptions();
      default:
        return addToolsMenuOptions();
    }
    
  }
  
  ArrayList<String> addFileMenuOptions() {
    ArrayList<String> options = new ArrayList<String>();
    options.add("New");
    options.add("Open");
    options.add("Save");
    options.add("Save As");
    options.add("Export");
    return options;
  }
  
  ArrayList<String> addEditMenuOptions() {
    ArrayList<String> options = new ArrayList<String>();
    options.add("Undo");
    options.add("Redo");
    options.add("Copy");
    options.add("Paste");
    options.add("Delete");
    options.add("Select All");
    return options;
  }
  
  ArrayList<String> addViewMenuOptions() {
    ArrayList<String> options = new ArrayList<String>();
    options.add("Dockable Dialogs");
    options.add("Zoom");
    return options;
  }
  
  ArrayList<String> addToolsMenuOptions() {
    ArrayList<String> options = new ArrayList<String>();
    options.add("Selection Tools");
    options.add("Paint Tools");
    options.add("Transform Tools");
    options.add("Colour Tools");
    return options;
  }
  
  void run() {
    for(DropdownMenu m : menus) {
      m.run();
    }
  }
  
  void display() {
    setting.displayButton(new PVector(0, 0), width / 2, setting.getHeight());
    for(DropdownMenu m : menus) {
      m.display();
    }
  }
}