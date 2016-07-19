class Blob{
  PVector pos;
  PVector vel;
  float r;

  Blob(float x, float y){
    pos = new PVector(x, y);
    vel = PVector.random2D();
    vel.mult(random(2, 5));
    r = 40;
  }
  void update(){
    pos.add(vel);
  }
  void show(){
    noFill();
    stroke(0);
    strokeWeight(4);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
}
