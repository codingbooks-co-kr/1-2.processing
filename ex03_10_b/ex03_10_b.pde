// 원의 크기가 점점 증가2

int r = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(150, 150, r, r);
  r = r + 1;
}
