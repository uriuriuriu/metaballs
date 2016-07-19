Blob b;

void setup() {size(640, 360);
  b = new Blob(100, 100);
}

void draw(){
  background(51);
  loadPixels();
  for(int x = 0; x < width ; x++){
    for(int y = 0; y < height; y++){
      int index =  x + y * width;
      float d = dist(x, y, b.pos.x, b.pos.y);
      float col = b.r / d;
      pixels[index] = color(col);
    }
  }
  updatePixels();

  b.show();
}
