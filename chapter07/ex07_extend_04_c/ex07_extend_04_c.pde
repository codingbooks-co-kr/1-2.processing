// [질문7.12] 평행선 그리기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  int y = 50;
  // 세미콜론 오류!
  while (y < height); {
    stroke(255);
    line(0, y, width, y);
    y += 50;
  }
}
