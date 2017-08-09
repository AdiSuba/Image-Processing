class Canvas {
  PVector pos;
  int sizeX;
  int sizeY;
  PImage img;
  Brush brush;
  
 Canvas() {
   pos = new PVector(50, 50);
   sizeX = width - 2*50;
   sizeY = height - 2*50;
   img = createImage(sizeX, sizeY, RGB);
   brush = new Brush(10);
   clearCanvas();
 }
 
  void clearCanvas() {
    img.loadPixels();
    for (int x = 0; x < sizeX; x++) {
      for (int y = 0; y < sizeY; y++) {
        int loc = x + y * sizeX;
        img.pixels[loc] = color(255);
      }
    }
    img.updatePixels();
  }
  
  void run() {
    if(mousePressed) brush.applyBrush(this);
  }
 
  void display() {
    fill(255);
    image(img, pos.x, pos.y);
    brush.display();
  }
}