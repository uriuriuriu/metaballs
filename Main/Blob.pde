class Blob{
  PVector pos;
  float r;

  Blob(float x, float y){
    pos = new PVector(x, y);
    r = 40000;
  }
  void show(){
    noFill();
    stroke(255);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
}
