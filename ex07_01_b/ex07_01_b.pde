// 다섯 개의 평행선2 (for문 미사용)

int y = 50;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  stroke(255);
  line(0, y, width, y);
  y += 50;
}
