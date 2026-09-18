// 마우스를 따라 움직이는 다각형

float points = 4.0, angle = 360.0 / points;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  fill(255, 255, 0);
  beginShape();
  for (int degree = 0; degree < 360; degree += angle) {
    float theta = radians(degree);
    float x = mouseX + 30.0 * cos(theta);
    float y = mouseY + 30.0 * sin(theta);
    vertex(x, y);
  }
  endShape(CLOSE);
}
