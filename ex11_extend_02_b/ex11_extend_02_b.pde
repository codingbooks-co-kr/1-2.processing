// 매개변수의 데이터형이 다른 함수 오버로딩

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  display(100, 100);
  display(200.5, 200.5);
}

void display(int x, int y) {
  fill(255, 0, 0);
  ellipse(x, y, 120, 120);
}

void display(float x, float y) {
  fill(0, 255, 0);
  ellipse(x, y, 120, 120);
}
