// 마우스 좌우 위치에 따라 원과 사각형 변경

int x = 100, y = 100;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  display(150);
}

void display(int x) {
  int y = 150;
  if (mouseX < y) {
    int d = 200;
    ellipse(x, y, d, d);
  } else {
    int d = 200;
    rectMode(CENTER);
    rect(x, y, d, d);
  }
}
