// Blob b;
Blob[] blobs = new Blob[2];

void setup() {size(640, 360);
  for(int i = 0; i < blobs.length; i++){
    blobs[i] = new Blob(
      random(width),
      random(height)
      );
  }
}

void draw(){
  background(51);
  loadPixels();
  for(int x = 0; x < width ; x++){
    for(int y = 0; y < height; y++){
      int index =  x + y * width;
      float d = dist(x, y, blobs[0].pos.x, blobs[0].pos.y);
      float col = 1000 * blobs[0].r / d;

      pixels[index] = color(col);
    }
  }
  updatePixels();
  for (Blob b : blobs){
    b.update();
    b.show();
  }
}
