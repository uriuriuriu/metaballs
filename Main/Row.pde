class Row{
  private int _lifeCount = 0;
  private static final float W = 4;
  private static final float H = 10;
  Row(){
    fill(55, 255);
    DrawPoint();
  }

  void draw() {
    DrawPoint();
    _lifeCount++;
  }

  void DrawPoint(){
    pushMatrix();
    beginShape();
    translate(random(width), random(height));
    vertex(H/2, 0);
    vertex(-H/2, -W/2);
    vertex(-H/2, W/2);
    endShape(CLOSE);
    popMatrix();
  }
};
