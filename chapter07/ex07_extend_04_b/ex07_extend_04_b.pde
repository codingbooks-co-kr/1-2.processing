// [질문7.2] 평행선 그리기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  // 세미콜론 오류!
  for (int y = 50; y < height; y += 50); {
    stroke(255);
    line(0, y, width, y);
  }
}
