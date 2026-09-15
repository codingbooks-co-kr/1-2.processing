// 다섯 개의 평행선1 (for문 미사용)

int y = 50;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  stroke(255);
  line(0, y, width, y);
  line(0, y+50, width, y+50);
  line(0, y+100, width, y+100);
  line(0, y+150, width, y+150);
  line(0, y+200, width, y+200);
}
