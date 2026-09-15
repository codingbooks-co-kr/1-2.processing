// while문: 평행선 그리기

void setup() {
  size(300, 300);
}

void draw() {
  int y = 50;
  while (y < height) {
    line(0, y, width, y);
    y += 50;
  }
}
