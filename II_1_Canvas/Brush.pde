class Brush {
  int radius;
  Brush(int r) {
    radius = r;
  }
  
  void applyBrush(Canvas c) {
    c.img.loadPixels();
    int r = radius;
    int midx = mouseX - (int)c.pos.x;
    int midy = mouseY - (int)c.pos.y;
    int xbeg = midx - r;
    if(xbeg < 0) xbeg = 0;
    int ybeg = midy - r;
    if(ybeg < 0) ybeg = 0;
    for (int x = xbeg; x <= midx + r && x < c.sizeX; x++) {
      for (int y = ybeg; y <= midy + r && y < c.sizeY; y++) {
        int loc = x + y * c.sizeX;
        if(dist(x, y, midx, midy) <= r) c.img.pixels[loc] = color(0);
      }
    }
    c.img.updatePixels();
  }
  
  void display() {
   stroke(0);
   strokeWeight(1);
   fill(0, 0, 0, 0);
   ellipse(mouseX, mouseY, 2*radius, 2*radius);
  }
}