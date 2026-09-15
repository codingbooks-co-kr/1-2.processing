// 다섯 개의 평행선 (for문 사용)

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int y = 50; y < height; y += 50) {
    stroke(255);
    line(0, y, width, y);
  }
}
