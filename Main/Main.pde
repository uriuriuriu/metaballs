
void setup() {size(640, 360);
  background(51);
  loadPixels();
  for(int x = 0; x < width ; x++){
    for(int y = 0; y < height; y++){
      int index =  x + y * width;
      pixels[index] = color(x, 0, y);
    }
  }
  updatePixels();
}
