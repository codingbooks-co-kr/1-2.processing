// 원을 좌에서 우로 이동2

int x = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x, 150, 30, 30);
  x++;
}
