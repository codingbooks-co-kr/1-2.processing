// 원을 대각선(중앙에서 우하단) 방향으로 이동

int x = 150, y = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x, y, 30, 30);
  x++;
  y++;
}
