// 문자를 대각선(좌하단에서 우상단) 방향으로 이동

char c = 'A';
int x = 0, y = 300;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  textSize(50);
  text(c, x, y);
  x++;
  y--;
}
