// 원의 등속 이동 (PVector 클래스 미사용)

float x = 0, y = 0;
float velocity_x = 1, velocity_y = 1;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(x, y, 30, 30);
  x += velocity_x;
  y += velocity_y;
}
