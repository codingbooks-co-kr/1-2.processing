// while문을 사용하여 다섯 개의 평행선 그리기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  int y = 50;
  while (y < height) {
    stroke(255);
    line(0, y, width, y);
    y += 50;
  }
}
