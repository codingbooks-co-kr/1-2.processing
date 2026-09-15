int x = 300, y = 200, c = 0, d = 100;

void setup() {
  size(700, 400);
}

void draw() {
  background(0);

  stroke(255, 255, 0);
  strokeWeight(5);
  line(0, y+d/2, 700, y+d/2);

  fill(c, 0, 0);
  ellipse(x, y, d, d);
  ellipse(x+d, y, d, d);

  noFill();
  triangle(x, y, x+d/2, y-d, x+d, y);
}
