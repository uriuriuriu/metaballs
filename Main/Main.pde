public static final int NUM_POINT = 100;
public static ArrayList<Row> rows = new ArrayList<Row>();

void setup() {size(512, 512);
  background(130);
  fill(255, 150);
  ellipse(width/2, height/2, 30, 30);
  for (int i = 0; i < 10; ++i) {
    Row row = new Row();
    rows.add(row);
  }
//  println("boids.get(0).aa: " + boids.get(0).aa);
}

void draw() {
  background(130);

  for (Row row : rows) {
    row.draw();
  }
//  Boid boid = boids.get(0);
}
