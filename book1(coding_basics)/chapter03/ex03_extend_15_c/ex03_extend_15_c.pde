// 대각선 이동

// 전역변수
int x = 0, y = 0;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  // 지역변수
  int d = 30;
  ellipse(x, y, d, d);
  x++;
  y++;
}
