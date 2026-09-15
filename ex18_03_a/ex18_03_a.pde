// 원의 마찰 이동 (PVector 클래스 미사용)

float x = 0, y = 0;
float velocity_x = 10, velocity_y = 10;
float friction = 0.98;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(x, y, 30, 30);
  velocity_x *= friction;
  velocity_y *= friction;
  x += velocity_x;
  y += velocity_y;
}
