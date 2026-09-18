// 크기 증가

// 전역변수
int d = 0;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  // 지역변수
  int x = 150;
  int y = 150;
  ellipse(x, y, d, d);
  d++;
}
