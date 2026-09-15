// 원의 크기가 점점 증가1

int r;

void setup() {
  size(300, 300);
  r = 0;
}

void draw() {
  background(0);
  ellipse(150, 150, r, r);
  r = r + 1;
}
