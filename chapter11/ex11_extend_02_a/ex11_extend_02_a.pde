// 매개변수의 개수가 다른 함수 오버로딩

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  display(100, 100);
  display(200, 200, 120);
}

void display(int x, int y) {
  fill(255, 0, 0);
  ellipse(x, y, 120, 120);
}

void display(int x, int y, int d) {
  fill(0, 255, 0);
  ellipse(x, y, d, d);
}
