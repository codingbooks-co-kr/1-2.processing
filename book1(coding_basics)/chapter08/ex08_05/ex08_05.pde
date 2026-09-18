// 작은 원들로 큰 원 궤적 만들기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float angle = map(mouseX, 0, width, 0, 360);
  for (int degree = 0; degree < angle; degree += 5) {
    float theta = radians(degree);
    float x = width/2 + 100.0 * cos(theta);
    float y = height/2 + 100.0 * sin(theta);
    ellipse(x, y, 10, 10);
  }
}
