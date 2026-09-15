// 원을 두 개 생성

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  display(100.5, 100.5, 255, 120.5);
  display(200.5, 200.5, 150, 120.5);
}

void display(float x, float y, int c, float d) {
  fill(c, 0, 0);
  ellipse(x, y, d, d);
}
