// 원을 두 개 생성

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  display(100, 100);
  display(200, 200);
}

void display(int x, int y) {
  fill(255, 255, 0);
  ellipse(x, y, 120, 120);
}
